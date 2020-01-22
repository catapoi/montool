#!/usr/bin/expect

set oldpass [lindex $argv 0]
set newpass [lindex $argv 1]

puts $oldpass
puts $newpass

spawn passwd
expect "Old password:" {send "$oldpass\r"}
expect "New password:" {send "$newpass\r"}
expect "Enter the new password again:" {send "$newpass\r"}
expect eof
