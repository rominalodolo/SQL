import database

menu = """Please select one of the following options:
1) Add new movie.
2) View upcoming movies.
3) View all movies.
4) Watch a movie.
5) View watched movies.
6) Exit.

Your selection: """
welcome = "Welcome to the watchlist app!"

print(welcome)
database.create_tables()

def prompt_watch_movie():
    movie_title = input("Enter movie title you've watched: ")
    database.watch_movie(movie_title)


while (user_input := input(menu)) != "6":
    if user_input == "1":
        prompt_add_movie()
    elif user_input == "2":
        movies = database.get_movies(True)
        print_movie_list("Upcoming", movies)
    elif user_input == "3":
        
    elif user_input == "4":
        pass
    elif user_input == "5":
        pass
    else:
        print("Invalid input, please try again!")
