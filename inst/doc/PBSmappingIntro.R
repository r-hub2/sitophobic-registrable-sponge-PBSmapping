## Dummy R code for stupid R check
	os = Sys.info()['sysname']
	pdftex = Sys.which("pdflatex")
	if (pdftex=="") {
		if (os %in% c("Windows")) {
			if (dir.exists("C:\\Program Files\\MiKTeX\\miktex\\bin\\x64\\"))
				Sys.setenv(PATH=paste(Sys.getenv("PATH"),"C:\\Program Files\\MiKTeX\\miktex\\bin\\x64\\",sep=";"))
		}
		if (os %in% c("Linux")) {
			if (dir.exists("/usr/local/texlive/*/bin/x86_64-linux"))
				Sys.setenv(PATH=paste(Sys.getenv("PATH"),"/usr/local/texlive/*/bin/x86_64-linux",sep=":"))
			#system(command = "ln -s /usr/bin/pdftex /usr/bin/pdflatex")
		}
		if (os %in% c("Darwin")) {
			if (dir.exists("/usr/texbin"))
				Sys.setenv(PATH=paste(Sys.getenv("PATH"),"/usr/texbin",sep=":"))
		}
	}
