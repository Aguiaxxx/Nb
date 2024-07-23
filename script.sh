#!/bin/bash

while true; do
    echo "Iniciando node app.js"
    node app.js &
    PID=$!  # Captura o PID do processo node

    # Espera 2 minutos (120 segundos)
    sleep 1800

    # Termina o processo node
    kill $PID

    echo "Programa fechado. Esperando 10 segundos para reiniciar..."
    sleep 3000
done
