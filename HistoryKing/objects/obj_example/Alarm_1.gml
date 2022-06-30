widget_set_caption("Run...");
if (os_type == os_windows) defsh = "COMSPEC"; else defsh = "SHELL"; fname = EnvironmentGetVariable(defsh);
if (os_type == os_windows) filter = "Windows Executable File (*.exe)|*.exe"; else filter = "Unix Executable File (*)|*";
prog = get_open_filename_ext(filter, fname, filename_dir(fname), "Select an executable file to execute from the shell...")
if (!string_length(prog)) { exit; }
arg = get_string("Enter the command line arguments to pass to the executable file, or click Cancel if there are none:", "ENTER CMDLINE ARGUMENTS HERE");
// allow reading from stdout and writing to stdin file descriptors
file_text_enable_stddesc(true); process = execute_shell(prog, arg);