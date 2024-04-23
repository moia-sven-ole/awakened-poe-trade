#!/bin/bash

# Starte den Server im Hintergrund
echo "Starte den Server..."
./renderer.sh &  # Ersetze 'server_command' mit dem tatsächlichen Befehl, um deinen Server zu starten
server_pid=$!  # Speichert die Prozess-ID des Servers

# Warte eine angemessene Zeit, damit der Server starten kann
# oder prüfe den Status des Servers auf eine spezifischere Weise
echo "Warte darauf, dass der Server startet..."
sleep 5  # Pausiert das Skript für 10 Sekunden; passe diese Zeit nach Bedarf an

# Starte den zweiten Prozess
echo "Starte den zweiten Prozess, der den Server benötigt..."
./main.sh  # Ersetze dies mit dem Befehl, der den Server benötigt

# Optional: Stoppe den Server sicher, wenn er nicht mehr benötigt wird
echo "Stoppe den Server..."
kill $server_pid

echo "Beide Prozesse wurden ausgeführt"