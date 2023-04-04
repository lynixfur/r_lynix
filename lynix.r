library(RPostgreSQL)

con <- dbConnect(PostgreSQL(),
                 user = "lynix_r",
                 password = "abc123",
                 host = "localhost",
                 port = 5432,
                 dbname = "lynix_r_testing")

data <- dbGetQuery(con, "SELECT * FROM customers")

dbDisconnect(con)

lynix <- function() {
    # Print Text
    cat("Hello Lynix!\n")
}