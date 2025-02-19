proc count_words_fixed {text} {
    set text [string trim $text]
    if {[string length $text] == 0} { return 0 }
    set words 0
    regexp -all -inline {\S+} $text 
    return [llength $words]
}

puts [count_words_fixed "This is a test sentence"]
puts [count_words_fixed "   This  is  a   test sentence     "]
puts [count_words_fixed ""]