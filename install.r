jsonlite::fromJSON("https://api.github.com/repos/apache/spark/tags")$name

if (!require('devtools')) install.packages('devtools')
devtools::install_github('apache/spark@v2.3.1', subdir='R/pkg')

Sys.setenv(SPARK_HOME='C:\\Users\\RohitSharma\\Desktop\\spark\\spark-2.3.1-bin-hadoop2.7')
.libPaths(c(file.path(Sys.getenv('SPARK_HOME'), 'R', 'lib'), .libPaths()))

library(SparkR)

sparkR.session()

Sys.setenv(JAVA_HOME='C:\\Program Files\\Java\\jre1.8.0_181')

library(rJava)

#C:\Program Files (x86)\Common Files\Oracle\Java\javapath

df <- as.DataFrame(faithful)


sc <- sparkR.init(master = "local",sparkEnvir = list(spark.driver.memory="2g"))
sqlContext <- sparkRSQL.init(sc)

#####################################

SPARK_HOME <- "C:\\Users\\RohitSharma\\Desktop\\spark\\spark-2.3.1-bin-hadoop2.7"
Sys.setenv('SPARKR_SUBMIT_ARGS'='"--packages" "com.databricks:spark-csv_2.10:1.2.0" "sparkr-shell"')
library(SparkR, lib.loc = "C:\\Users\\RohitSharma\\Desktop\\spark\\spark-2.3.1-bin-hadoop2.7\\R\\lib")

library(SparkR)
Sys.setenv(JAVA_HOME='C:\\Program Files\\Java\\jdk-11')
Sys.setenv(JAVA_HOME='C:\\Program Files\\Java\\jre1.8.0_181')
library(rJava)

sc <- sparkR.init(master = "local", sparkHome = SPARK_HOME)
Sys.getenv()
####################################

.libPaths(c(.libPaths(),'C:\\Users\\RohitSharma\\Downloads\\spark-2.3.1-bin-hadoop2.7\\R\\lib'))
Sys.setenv(SPARK_HOME='C:\\Users\\RohitSharma\\Downloads\\spark-2.3.1-bin-hadoop2.7')
Sys.setenv(PATH = paste(Sys.getenv(c('PATH')),'C:\\Users\\RohitSharma\\Downloads\\spark-2.3.1-bin-hadoop2.7\\bin'))
library(SparkR,lib.loc = c(file.path(Sys.getenv("SPARK_HOME"),"R","lib")))
sc<-sparkR.session(master="local[*]",enableHiveSupport=FALSE,sparkConfig=list(spark.driver.memory="1g",spark.sql.warehouse.dir="C:\\Users\\RohitSharma\\Downloads\\spark-2.3.1-bin-hadoop2.7\\"))
sqlContext = sparkRSQL.init()
##########################

Sys.setenv(PATH = paste(Sys.getenv(c('PATH')),'C:\\Windows\\system32;'))
Sys.setenv(PATH = paste(Sys.getenv(c('PATH')),'C:\\Windows;'))
Sys.setenv(PATH = paste(Sys.getenv(c('PATH')),'C:\\Windows\\System32\\Wbem;'))
Sys.setenv(PATH = paste(Sys.getenv(c('PATH')),'C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\;'))



