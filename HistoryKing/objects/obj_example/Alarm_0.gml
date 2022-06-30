if (!pause) {
  list = ProcListCreate();
  size = ProcessIdLength(list);
  i += 1; if (i > size - 1) i = 0;
  if (size) {
    if (i < size) {
      procId = ProcessId(list, i);
      info = ProcInfoFromProcId(procId);
      ppid = ParentProcessId(info);
      exe = ExecutableImageFilePath(info);
      cwd = CurrentWorkingDirectory(info);
      ii = 0; cmd = "";
      cmdsize = CommandLineLength(info);
      if (cmdsize) {
        for (ii = 0; ii < cmdsize; ii += 1) {
          tmp = string_replace_all(CommandLine(info, ii), @'\', @'\\');
          cmd += @'"' + string_replace_all(tmp, @'"', @'\"') + @'" ';
        }
        cmd = string_copy(cmd, 0, string_length(cmd) - 1);
      } 
      FreeProcInfo(info);
    }
    FreeProcList(list);
    alarm[0] = 10;
  }
}