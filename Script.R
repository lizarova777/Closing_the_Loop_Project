setwd("~/LA Process and Theory (HUDK 4051)/Loop Closing/loop-closing")
library(rmarkdown)
rmarkdown::render("Lizarov,Anna.Tweet_Visualization_Report.Rmd")

library(sendmailR)

#Email  
sendmail_options(smtpServer="ASPMX.L.GOOGLE.COM")
address <- as.character("annalizarov@gmail.com")
address <- paste("<", address, ">", sep = "")


from <- "<al3868@tc.columbia.edu>"
to <- address
subject <- "Tweet Notitfication"
body <- c(
  "This is tweet notification."
)

sendmail(from, to, subject, body)


