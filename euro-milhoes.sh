#!/bin/bash

gerar_numero_aleatorio() {
    min=$1
    max=$2
   echo $((RANDOM % ($max - $min + 1) + $min))
}

gerar_chave_euromilhoes() {
    chave=""

  # Gera 5 números aleatórios de 1 a 50
for i in {1..5}; do
    numero=$(gerar_numero_aleatorio 1 50)
        chave="$chave $numero"
  done

  # Gera 2 estrelas da sorte de 1 a 12
for i in {1..2}; do
    estrela=$(gerar_numero_aleatorio 1 12)
        chave="$chave $estrela"
  done

  echo $chave
}

while true; do
    for i in {1..5}; do
        chave=$(gerar_chave_euromilhoes)
    echo "A chave do Euro-Milhões é: $chave"
  done

read -p "Quer gerar outra chave? (Sim/Não): " resposta
    if [ "$resposta" != "Sim" ] && [ "$resposta" != "sim" ]; then
        break
    fi
  done
