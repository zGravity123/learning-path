const nome = String(prompt("Introduza o seu Nome"));
const altura = Number(prompt("Introduza a sua altura").replace(",", "."));
const peso = Number(prompt("Introduza o seu peso").replace(",", "."));
const imc = (peso / (altura * altura)).toFixed(1);

alert(nome + ", o teu IMC é " + imc);

console.log(nome);
console.log(altura);
console.log(peso);
console.log("IMC: ", imc);
