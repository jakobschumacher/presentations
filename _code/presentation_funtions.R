# This code needs to be run, after the presentation is ready and the presentation lies in the same folder as this code
move_presentation_to_posts <- function(presentationfile = here("_code", paste0(params$permalink, ".html"))){
  tempfilewithpath <- "tempfile.html" 
  file.create(tempfilewithpath)
  filedata <- read_file(presentationfile)
  write(paste0("---\ntitle: ", params$presentation_title), file=tempfilewithpath)
    write(paste0("date: ", params$presentation_date), file=tempfilewithpath, append = TRUE)
    write(paste0("course: ", params$course), file=tempfilewithpath, append = TRUE)
    write(paste0("host: ", params$host), file=tempfilewithpath, append = TRUE)
  write(paste0("permalink: ", params$permalink, "/"), file=tempfilewithpath, append = TRUE)
  write(paste0("---"), file=tempfilewithpath, append = TRUE)
  write(filedata, file=tempfilewithpath, append = TRUE)
  file.copy(from = paste0(tempfilewithpath), to = here("_posts/", paste0(params$permalink, ".html")), overwrite = TRUE)
  file.remove(tempfilewithpath)
  file.remove(presentationfile)
}

move_pdf_docx_to_assets <- function(docxfile = here("_code", paste0(params$permalink, ".docx")), pdffile = here("_code", paste0(params$permalink, ".pdf"))){
  if(file.exists(docxfile)){
  file.copy(from = docxfile, to = here("assets", params$permalink, paste0(params$permalink, ".docx")), overwrite = TRUE)
  file.remove(docxfile)
  print(paste("docx file moved to", here("assets", params$permalink, paste0(params$permalink, ".docx"))))
  }
  if(file.exists(pdffile)){
  file.copy(from = pdffile, to = here("assets", params$permalink, paste0(params$permalink, ".pdf")), overwrite = TRUE)
  file.remove(pdffile)
  print(paste("pdf file moved to", here("assets", params$permalink, paste0(params$permalink, ".docx"))))
  }
  }

move_pdf_docx_to_assets()
