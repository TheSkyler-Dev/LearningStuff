section .data
    pi dq 3.1415927          ; Constant π
    prompt_radius db "Enter barrel base radius: ", 0
    prompt_height db "Enter barrel height: ", 0
    result_volume db "Barrel volume is: %f", 10, 0

section .bss
    radius resq 1            ; Reserve space for radius
    height resq 1            ; Reserve space for height
    volume resq 1            ; Reserve space for volume

section .text
    global _start

_start:
    ; Prompt for radius
    mov rdi, prompt_radius
    call print_string
    call read_float
    fstp qword [radius]      ; Store radius

    ; Prompt for height
    mov rdi, prompt_height
    call print_string
    call read_float
    fstp qword [height]      ; Store height

    ; Calculate volume: volume = π * radius^2 * height
    fld qword [radius]       ; Load radius
    fmul st0, st0            ; radius^2
    fld qword [height]       ; Load height
    fmul st1, st0            ; radius^2 * height
    fld qword [pi]           ; Load π
    fmul st0, st1            ; π * radius^2 * height
    fstp qword [volume]      ; Store volume

    ; Print volume
    mov rdi, result_volume
    movq xmm0, qword [volume]
    call printf

    ; Exit
    mov rax, 60              ; syscall: exit
    xor rdi, rdi             ; status: 0
    syscall

; Helper functions (e.g., print_string, read_float, printf) would be implemented or linked from libc.