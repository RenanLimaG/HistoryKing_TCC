draw_set_font(fnt_example);
if (!pause) p = "pause"; else p = "resume";
if (!ProcIdExists(procId) || exe == "") e = "<undefined>"; else e = exe;
if (!ProcIdExists(procId) || cwd == "") d = "<undefined>"; else d = cwd;
if (!ProcIdExists(procId) || cmd == "") c = "<undefined>"; else c = cmd;
str = "press <space> to " + p + " enumeration, or press <enter> to inspect" +
chr(13) + chr(10) + "the environment variables belonging to the process identifier." + chr(13) + chr(10) +
chr(13) + chr(10) + "pid=" + string(procId) + chr(13) + chr(10) + "ppid=" + string(ppid) +
chr(13) + chr(10) + "exe=" + e + chr(13) + chr(10) + "cwd=" + d + chr(13) + chr(10) + "cmd=" + c;
display_set_gui_size(string_width(str) + 64, string_height(str) + 64);
draw_set_color(c_white);
draw_rectangle(4, 4, string_width(str) + 60, string_height(str) + 60, 0);
draw_set_color(c_black);
draw_rectangle(16, 16, string_width(str) + 48, string_height(str) + 48, 0);
draw_set_color(c_white);
draw_text(32, 32, str);
window_set_size(string_width(str) + 64, string_height(str) + 64);
if (!pause) window_center();
draw_set_color(c_white);