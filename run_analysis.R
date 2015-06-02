activity_labels <- read.table("activity_labels.txt", col.names=c("Y.test", "Activity"))
features_list <- read.table("features.txt")
features_indices <- features_list[grepl("*mean\\(\\)*", features_list$V2) | grepl("*std\\(\\)*", features_list$V2),1]

read_inertial_signals <- function(t) {
  inertial_signals <- read.table(paste0("subject_", t, ".txt"), col.names=paste0("Subject"))
  features <- read.table(paste0("X_", t, ".txt"), col.names=features_list$V2)
  features <- features[,features_indices]
  inertial_signals <- data.frame(inertial_signals, X.test = features, col.names="X.test")
  inertial_signals <- data.frame(inertial_signals, Y.test = read.table(paste0("y_", t, ".txt"), col.names="Y.test"))
  
  #inertial_signals <- data.frame(inertial_signals, inertial.BodyAcc.X = read.table(paste0("Inertial Signals/body_acc_x_", t, ".txt")))
  #inertial_signals <- data.frame(inertial_signals, inertial.BodyAcc.Y = read.table(paste0("Inertial Signals/body_acc_y_", t, ".txt")))
  #inertial_signals <- data.frame(inertial_signals, inertial.BodyAcc.Z = read.table(paste0("Inertial Signals/body_acc_z_", t, ".txt")))
  #inertial_signals <- data.frame(inertial_signals, inertial.BodyGyro.X = read.table(paste0("Inertial Signals/body_gyro_x_", t, ".txt")))
  #inertial_signals <- data.frame(inertial_signals, inertial.BodyGyro.Y = read.table(paste0("Inertial Signals/body_gyro_y_", t, ".txt")))
  #inertial_signals <- data.frame(inertial_signals, inertial.BodyGyro.Z = read.table(paste0("Inertial Signals/body_gyro_z_", t, ".txt")))
  #inertial_signals <- data.frame(inertial_signals, inertial.TotalAcc.X = read.table(paste0("Inertial Signals/total_acc_x_", t, ".txt")))
  #inertial_signals <- data.frame(inertial_signals, inertial.TotalAcc.X = read.table(paste0("Inertial Signals/total_acc_y_", t, ".txt")))
  #inertial_signals <- data.frame(inertial_signals, inertial.TotalAcc.X = read.table(paste0("Inertial Signals/total_acc_z_", t, ".txt")))
  
  return(inertial_signals)
}

setwd('test')
test_data <- read_inertial_signals("test")
setwd("..")
setwd('train')
train_data <- read_inertial_signals("train")
setwd("..")

bound_data <- rbind(test_data, train_data)

tidyData1 <- merge(bound_data, activity_labels, by="Y.test")
tidyData2 <- aggregate(. ~ Subject + Activity, data=tidyData1, mean, na.rm = TRUE)
drops <- c("Y.test", "col.names")
tidyData2 <- tidyData2[,!(names(tidyData2) %in% drops)]
write.table(tidyData2, file="clean_data.txt", row.names=FALSE)
  