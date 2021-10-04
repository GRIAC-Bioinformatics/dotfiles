Sys.setenv(LANG = "en")
Sys.setenv(R_INSTALL_STAGED = FALSE)

options(
	prompt="R> ",
	digits=4,
	digits.secs=3, # show sub-second time stamps
	#width=160, # wide display with multiple monitors
	stringsAsFactors=FALSE,
	show.signif.stars=FALSE,
	#error = function() traceback(3), # print traceback right after an error
	repos = c(CRAN = "https://cloud.r-project.org/"),
	instal.packages.compile.from.source = "no"
)


tryCatch({
	user_groups <- unlist(strsplit(system("id -G -n", intern = TRUE), " "))
	disks <- list.dirs(file.path("/groups", user_groups[2]), recursive = FALSE)
	tmp_disk <- disks[grepl(x=disks, pattern="/tmp[0-9]{2}")]
	new_libpath <- file.path(tmp_disk, "projects", user_groups[1], "R")
	rm(user_groups, disks, tmp_disk)
	
	dir.create(new_libpath, showWarnings = FALSE, recursive = TRUE, mode = "0770")
	.libPaths(
		c(
			new_libpath,
			.libPaths()
		)
	)
	rm(new_libpath)
})


formals(quit)$save <- formals(q)$save <- "no"


ls.packages <- function() {
	ip = as.data.frame(installed.packages()[,c(1,3:4)])
	ip = ip[is.na(ip$Priority),1:2,drop=FALSE]
	ip
}
