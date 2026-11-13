const idade = Number(prompt("Introduza uma idade"))

if (idade <= 12)
    console.log("4 EUR")
else if (idade >= 13 && idade <= 64)
    console.log("8 EUR")
else if (idade >= 65)
    console.log("5 EUR")