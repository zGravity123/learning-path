const nome = prompt("Introduza o seu nome");
const idade = Number(prompt("Introduza uma idade"));
const cartaoestudante = prompt("Tem cartão de estudante? (sim ou não)");

let preco;

if (idade <= 12)
  preco = "4 €";
else if (idade >= 65)
  preco = "5 €";
else if (cartaoestudante === "sim")
  preco = "6 €";
else
  preco = "8 €";

alert(nome + ", o preço do bilhete é " + preco);

console.log(nome);
console.log(idade);
console.log(cartaoestudante);
console.log(preco);
