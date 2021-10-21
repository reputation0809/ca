.data
arr: .word 99, 102, 106    #letter[3]={'c','f','j'} in ASCII
target: .word 97           #target in ASCII
len: .word 3               #array length

.text
#s1=arr base address
#s2=target value
#s3=output
#s4=length of arr
#t0=i
#t1=letter[i]

main:
    la s1, arr             #s1=letter
    lw s2, target          #s2='a'
    add s3, x0, x0         #s3=output
    lw s4, len             #s4=3
    add t0, x0, x0         #i=0
    jal ra, loop           #jump to for loop
    jal ra, print          #jump to print
    ecall
    
loop:
    lw t1, 0(s1)           #t1=letter[i]
    addi s1, s1, 4         #address move forward
    blt t1, s2, loop       #if(t1<s2) jump to loop
    ret

print:
    add a0, t1, x0         #load char
    li a7, 1               #print char
    ecall