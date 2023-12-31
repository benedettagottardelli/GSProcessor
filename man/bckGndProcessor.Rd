% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bckGndProcessor.R
\name{bckGndProcessor}
\alias{bckGndProcessor}
\title{Processor main function}
\usage{
bckGndProcessor(
  input_folder.dir,
  output_folder.dir,
  tmp_folder.dir,
  sync_folder.dir,
  log_folder.dir = NA,
  cache_folder.dir = NA,
  override.repeated.tUID = FALSE,
  stopAfterExecution = Inf
)
}
\arguments{
\item{input_folder.dir}{Processor's input folder. This folder is constantly monitored and whenever a token is found processing is started.}

\item{output_folder.dir}{Processor's output folder. Processor saves in the output_folder.dir the output token containing the processing results.}

\item{tmp_folder.dir}{Processor's temporary folder. tmp_folder.dir is a staging folder where input token are unzipped and processing output are created.}

\item{sync_folder.dir}{Processor's synchronization folder. Processor uses sync_folder.dir to log the start and the end of all the processing that handles.}

\item{log_folder.dir}{Processor's log folder. Processor saves in the log_folder.dir all the execution logs associated with the processes that it is handling.}

\item{cache_folder.dir}{Processor's log folder. Processor saves in the cache_folder.dir info about the current run.}

\item{override.repeated.tUID}{If TRUE if two processes have the same unique ID, temporary files and logs are overwritten. If FALSE ???. By default override.repeated.tUID = FALSE.}

\item{stopAfterExecution}{Number of process handled after which the Processor stops. By default it is set to Inf.}
}
\description{
function for instantiating a processor running in background
}
\examples{
objS <- bckGndProcessor(input_folder.dir = "./inputFolder/",
                        output_folder.dir = "./outputFolder/",
                        tmp_folder.dir = "./tmpFolder/",
                        sync_folder.dir = "./syncFolder/",
)
objS$start()
}
