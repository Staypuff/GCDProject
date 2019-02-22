## These functions download the required files,
## merge the the data into a single data set,
## including only the mean and standard deviation variables.
## See the run_analysis.R readme for line by line comments

## dplyr package needed for "group.average" function
library(dplyr)
## download.data() creates directory and downloads the data
download.data <- function () {
        if(!file.exists("./gcdproject")){dir.create("./gcdproject")}
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        td <- tempdir()
        tf <- tempfile(tmpdir = td, fileext = ".zip")
        download.file(fileUrl, tf)
        unzip(tf, exdir = "./gcdproject", junkpaths = TRUE)
}
##Merges the training and the test sets to create one data set and filters Mean / Std
df <- function(dir = "./gcdproject/") {
        for(i in c("test", "train")){
                label <- read.table(paste0(dir, "y_", i, ".txt"), header = FALSE, col.names = "Activity")
                data <- read.table(paste0(dir, "x_", i, ".txt"))
                subject <- read.table(paste0(dir, "subject_", i, ".txt"), col.names = "Subject", colClasses = "character")
                activity <- read.table(paste0(dir, "activity_labels.txt"), col.names = c("Key", "Activity"), colClasses = "character")
                features <- read.table(paste0(dir, "features.txt"), stringsAsFactors = FALSE)
                activity[,2] <- sapply(activity[,2], tolower)
                colnames(data) <- gsub("-|,|[()]| ", "", features[,2]) %>%
                        gsub("mean", "Mean", .) %>% gsub("std", "Std", .) %>%
                        gsub("angle", "Angle", .) %>% gsub("gravity", "Gravity", .)
                meanstd <- grep("[Mm][Ee][Aa][Nn]|[Ss][Tt][Dd]", features[,2])
                data <- data[,meanstd]
                table <- data.frame(label, subject, data, stringsAsFactors = FALSE)
                table[,1] <- activity[,2][match(unlist(table[,1]), activity[,1])]
                table <- cbind(paste(i), table)
                colnames(table)[1] = "Set"
                assign(paste(i), table)
        }
        dfdata <<- rbind(train, test)
}

average <- function(x = dfdata) {
        sumbyA <- tbl_df(x) %>% 
                rename(Group = Activity) %>%
                select(-c(Set, Subject)) %>% 
                group_by(Group) %>%
                summarize_at(vars(tBodyAccMeanX:AngleZGravityMean), mean)
        sumbyS <- tbl_df(x) %>% 
                rename(Group = Subject) %>%
                select(-c(Set, Activity)) %>% 
                group_by(Group) %>%
                summarize_all(mean)
        sumbyS[,1] <- sapply(sumbyS$Group, function(x) if(x %in% as.character(1:9)){paste0("0",x)} else{x})
        sumbyS[,1] <- sapply(sumbyS$Group, function(x) paste0("Subject_", x))
        sumbyA[,1] <- sapply(sumbyA$Group, function(x) paste0("Activity_", x))
        final <- rbind(sumbyA, sumbyS)
        colnames(final)[2:87] <- sapply(colnames(final)[2:87], function(x) paste0("Avg_",x))
        average <<- arrange(final, Group)
}

