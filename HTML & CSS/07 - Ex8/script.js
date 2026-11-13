const nota = Number(prompt("Introduza uma nota!"))

if (nota >= 0 &&  nota <= 9)
    console.log("Insuficiente")
else if (nota >= 10 && nota <= 13)
    console.log("Suficiente")
else if (nota >= 14 && nota <= 17)
    console.log("Bom")
else if (nota >= 18 && nota <= 20)
    console.log("Muito bom!")
else
    console.log("ERRO! A nota esta entre 0-20?")