import database

MENU_PROMPT = "Enter 'q' to quit, or anything else to start a new poll."
POLL_PROMPT = "Select the poll id to create a pie chart of the vote percentage."

def prompt_select_poll(polls):
    for poll in polls: 
        print(f"{poll[0]}: {poll[1]}")

    selected_poll = int(input(POLL_PROMPT))
    _chart_options_for_poll(selected_poll)

def _chart_options_for_poll(poll_id):
    options = database.get_options(poll_id)
    # Draw pie chart here

while (user_input := input(MENU_PROMPT)) != "q":
    polls = database.get_polls()
    prompt_select_poll(polls)