fd = file_text_open_read_stdout(process);
output = file_text_read_string_stdout(fd);
if (CompletionStatusFromExecutedProcess(process) && string_length(output)) {
  widget_set_caption("Standard output:"); show_message(output);
  file_text_close_stdout(fd);
}