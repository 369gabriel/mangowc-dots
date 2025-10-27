#!/bin/bash

# Show pending tasks formatted for wofi
view_tasks() {
    # Get pending tasks: id and description
    tasks=$(task status:pending rc.report.next.columns=id,description rc.report.next.labels=ID,Task rc.report.next.filter=status:pending export)
    # Format with jq to lines like: "ID  Description"
    task_list=$(echo "$tasks" | jq -r '.[] | "\(.id) \(.description)"')

    if [[ -z "$task_list" ]]; then
        echo "No pending tasks." | wofi -d -p "View Tasks"
    else
        echo "$task_list" | wofi -d -p "Pending Tasks"
    fi
}

# Function to select a task for actions
select_task() {
    tasks=$(task status:pending rc.report.next.columns=id,description rc.report.next.labels=ID,Task rc.report.next.filter=status:pending export)
    task_list=$(echo "$tasks" | jq -r '.[] | "\(.id) \(.description)"')
    echo "$task_list" | wofi -d -p "Select a task:"
}

main_menu() {
    echo -e "View Tasks\nAdd Task\nMark Done\nDelete Task\nExit" | wofi -d -p "Taskwarrior Manager"
}

while true; do
    choice=$(main_menu)
    case "$choice" in
        "View Tasks")
            view_tasks
            ;;
        "Add Task")
            new_task=$(wofi -d -p "New task description:")
            if [[ -n "$new_task" ]]; then
                task add "$new_task"
            fi
            ;;
        "Mark Done")
            selected=$(select_task)
            if [[ -n "$selected" ]]; then
                id=$(echo "$selected" | awk '{print $1}')
                task $id done
            fi
            ;;
        "Delete Task")
            selected=$(select_task)
            if [[ -n "$selected" ]]; then
                id=$(echo "$selected" | awk '{print $1}')
                task $id delete
            fi
            ;;
        "Exit")
            exit 0
            ;;
    esac
done

