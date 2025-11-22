const std = @import("std");

pub fn main() !void {
    var stdout_buffer: [1024]u8 = undefined;
    var stdin_buffer: [1024]u8 = undefined;

    var stdout_writer = std.fs.File.stdout().writer(&stdout_buffer);
    var stdin_reader = std.fs.File.stdin().reader(&stdin_buffer);

    const stdout = &stdout_writer.interface;
    const stdin = &stdin_reader.interface;

    const input = try stdin.takeDelimiterExclusive('\n');

    try stdout.writeAll("-----------------------\n");
    try stdout.print("{s}\n", .{input});
    try stdout.writeAll("-----------------------\n");
    try stdout.writeAll("    \\  ^__^ \n");
    try stdout.writeAll("     \\ (oo)\\_______\n");
    try stdout.writeAll("       (__)\\       )\\/\\\n");
    try stdout.writeAll("           ||----w |\n");
    try stdout.writeAll("           ||     ||\n");
    try stdout.flush();
}
