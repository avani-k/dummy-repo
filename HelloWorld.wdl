version 1.0

workflow hello_world {
   call hello
   output { File helloFile = hello.outFile }
}

task hello {
    input {
    File myName
    }
    #define command to execute when this task runs
    command {
        echo Hello World! > Hello.txt
        cat ${myName} >> Hello.txt
    }

    output {
        File outFile = "Hello.txt"
    }
}
