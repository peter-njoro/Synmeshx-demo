#!/bin/bash

# ------------------------------------------
# SynmeshX CLI Simulation Demo
# Author: Peter Njoroge Chege
# Description:
# A mock CLI session that simulates how SynmeshX works —
# registering agents, pushing context, and syncing data.
# ------------------------------------------

# Setup for colors and typing effect
CYAN="\e[36m"
GREEN="\e[32m"
YELLOW="\e[33m"
RESET="\e[0m"

type_text() {
    echo -e "$1" | pv -qL 40
}

# Simulated CLI session
clear
echo -e "${YELLOW}=== SynmeshX Interactive CLI Demo ===${RESET}"
sleep 1

# Register a new agent
type_text "${CYAN}$ synmeshx register-agent vision_agent${RESET}"
sleep 1
type_text "${GREEN}✅ Agent 'vision_agent' registered successfully.${RESET}"
sleep 1.5
echo

# List connected agents
type_text "${CYAN}$ synmeshx list-agents${RESET}"
sleep 1
type_text "${GREEN}🧩 Connected Agents:${RESET}"
type_text "${GREEN}- vision_agent${RESET}"
type_text "${GREEN}- task_planner${RESET}"
type_text "${GREEN}- summarizer_bot${RESET}"
sleep 1.5
echo

# Push context data
type_text "${CYAN}$ synmeshx push-context vision_agent '{\"detected_objects\": [\"car\", \"tree\", \"person\"]}'${RESET}"
sleep 1
type_text "${GREEN}📡 Context pushed to mesh successfully.${RESET}"
sleep 1.5
echo

# Query from another agent
type_text "${CYAN}$ synmeshx query-context summarizer_bot \"recent updates\"${RESET}"
sleep 1.2
type_text "${GREEN}🧠 Context summary:${RESET}"
type_text "${GREEN}\"Vision agent detected 3 objects. Task planner created 2 new tasks.\"${RESET}"
sleep 1.5
echo

# Check mesh status
type_text "${CYAN}$ synmeshx status${RESET}"
sleep 1
type_text "${GREEN}🌐 Mesh Status:${RESET}"
type_text "${GREEN}- Active Agents: 3${RESET}"
type_text "${GREEN}- Pending Syncs: 0${RESET}"
type_text "${GREEN}- Last Update: 2s ago${RESET}"
sleep 1.5
echo

# End session
type_text "${CYAN}$ synmeshx shutdown${RESET}"
sleep 1
type_text "${GREEN}👋 SynmeshX Mesh closed. Session archived.${RESET}"
sleep 1
echo
echo -e "${YELLOW}=== End of Demo ===${RESET}"
