## These functions download the required files,
## merge the the data into a single data set, and
## filter only the mean and standard deviation variables.
## See the CodeComments.txt file for line by line comments.

## dplyr package needed only for "average" function below
library(dplyr)
## download.data() creates directory and downloads the data
download.data <- function (directory = "./gcdproject") {
        if(!file.exists(directory)){dir.create(directory)}
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        td <- tempdir()
        tf <- tempfile(tmpdir = td, fileext = ".zip")
        download.file(fileUrl, tf)
        unzip(tf, exdir = directory, junkpaths = TRUE)
        directory <<- directory
}
##Merges the training and the test datasets to create one data set and filters Mean / Std
data.set <- function(dir = directory) {
        for(i in c("test", "train")){
                label <- read.table(paste0(dir, "/y_", i, ".txt"), col.names = "Activity")
                data <- read.table(paste0(dir, "/x_", i, ".txt"))
                subject <- read.table(paste0(dir, "/subject_", i, ".txt"), col.names = "Subject")
                activity <- read.table(paste0(dir, "/activity_labels.txt"), colClasses = "character")
                features <- read.table(paste0(dir, "/features.txt"), stringsAsFactors = FALSE)
                activity[,2] <- sapply(activity[,2], tolower)
                colnames(data) <- gsub("-|,|[()]| ", "", features[,2]) %>%
                        gsub("mean", "Mean", .) %>% gsub("std", "Stdev", .) %>%
                        gsub("angle", "Angle", .) %>% gsub("gravity", "Gravity", .) %>%
                        gsub("Acc", "Acceleration", .) %>% gsub("^t", "Time", .) %>%
                        gsub("^f|Freq", "Frequency", .) %>% gsub("Gyro", "Gyroscope", .)
                meanstd <- grep("Mean|Stdev", features[,2])
                data <- data[,meanstd]
                table <- data.frame(label, subject, data, stringsAsFactors = FALSE)
                table[,1] <- activity[,2][match(unlist(table[,1]), activity[,1])]
                table <- cbind(paste(i), table)
                colnames(table)[1] = "Set"
                assign(paste(i), table)
        }
        dataframe <<- rbind(train, test)
}

## Creates a new dataset consisting of averages of above variables for each Activity and Subject.

average <- function(data = dataframe) {
        final <- tbl_df(data) %>% 
                select(-Set) %>% 
                group_by(Activity, Subject) %>%
                summarize_all(mean)
        average <<- arrange(final, Activity, Subject)
}

