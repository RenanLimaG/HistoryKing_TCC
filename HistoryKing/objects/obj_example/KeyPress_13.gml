widget_set_caption("PEB Inspector");
info = ProcInfoFromProcId(procId);
envsize = EnvironmentLength(info);
if (envsize) {
  for (jj = 0; jj < envsize; jj += 1) {
    q = show_question("Continue environment iteration?" + chr(13) + chr(10) + chr(13) + chr(10) + Environment(info, jj));
    if (!q) { FreeProcInfo(info); exit; } 
  }
} else {
  show_message("No environment to iterate.");
}
FreeProcInfo(info);