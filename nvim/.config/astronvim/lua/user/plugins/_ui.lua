math.randomseed(os.time())
local images = {
    {
        "⠀⠀⠀⠄⠒⠊⠉⡠⠴⠚⠁⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣤⣴⣶⣶⡶⠤⠤⠤⢀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⡶⢻⣿⡿⠿⢛⡟⠉⡠⠀⢠⠀⠀⠀⡀⠉⠑⠢⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⡟⠡⡿⠋⠀⢠⠊⣠⣞⣠⣶⡀⢳⣆⠀⠹⣧⣀⢀⡀⠈⠲⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡿⣿⣿⠀⠀⠁⠀⣰⣿⣿⣿⣿⣿⢻⣿⣿⣿⣷⣶⣽⣿⣾⣿⡄⠀⡈⢢⣀⣠⣤⠴⠦⠄⠀⠀⠀⠀⠀",
        "⠣⡀⠀⠀⠀⠀⠀⠀⠀⣴⡿⢋⣴⣟⡏⠀⠀⢀⣼⣵⣿⣿⣿⣿⣿⠘⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣆⢹⣦⢹⡀⠀⢀⣀⣤⠤⠀⠀⠀⠀",
        "⠀⠱⠀⠀⠀⠀⠀⠀⣼⢋⣴⣿⣿⣿⢡⢁⣴⣯⣿⣿⣿⣿⡟⣿⣿⠀⢹⣿⣿⣿⢻⣿⣿⣿⣿⣿⣿⣧⣿⣿⣇⠨⠍⠙⠃⠀⠀⠀⠀⠀",
        "⠀⠀⠃⠀⠀⠀⠀⣼⣷⣾⣿⣿⣿⣟⣿⣾⣿⣿⣿⣿⣿⣿⠁⣿⣿⠀⠀⢻⣿⣿⡸⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⢹⣿⣀⣀⣤⣼⣿⠇⡇⢻⣿⣿⣿⣿⢻⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⣰⢿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⣤⠟⠛⣿⣿⣭⠃⠀⠀⠘⠛⠿⣿⣇⡈⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⢠⡏⣼⣿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⢣⡈⣿⡀⠀⢿⣟⣻⠀⠀⠀⠀⠀⠀⣿⡗⢳⣿⣿⣿⣿⡆⠀⠀⠀⡎⠀⠀⢙",
        "⠀⠀⠀⢀⡞⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠹⡀⠀⠀⠉⠁⠈⠻⠏⠀⠀⠀⠀⠀⠀⢿⡇⢸⣿⣿⣿⣿⣿⠀⠀⠀⢩⣽⡏⠉",
        "⠀⠀⠀⡼⠁⢸⣿⣿⣿⣿⣯⣽⣿⣿⣿⣿⠟⠁⣿⣇⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠃⢸⣿⣿⡏⠙⢿⡆⠀⠀⠊⠀⠀⠁",
        "⠀⠀⠀⠁⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡁⠈⢲⡍⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⡇⠀⠘⣷⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠠⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⡇⢀⠀⢹⡆⠀⠀⠀⠀⠀",
        "⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⠃⡆⠀⠀⣇⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠙⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⡇⣼⠁⠀⠀⣿⠀⠀⠀⠀⠀",
        "⠄⠀⠀⣠⣿⣿⣿⣿⣿⡟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣇⡇⠀⠀⠀⣿⠀⠀⠀⠀⠀",
        "⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠞⠀⠀⠀⣰⡟⠀⠀⠀⠀⠀",
        "⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⢿⡿⠿⣿⣿⣿⣿⣿⠋⢹⠇⠀⠀⠀⠀⠀⠀⠀⡞⢻⣿⣿⣿⣿⣿⠟⠻⠟⢣⠤⢄⣀⣴⡟⠀⠀⠀⠀⠀⠀",
        "⠀⣼⣿⣿⣿⣟⣿⠋⠁⠁⢸⣧⠀⠀⠻⣿⣿⡏⢠⠋⠀⠀⠀⠀⠀⠀⠀⠀⢷⣼⣿⣿⣿⣿⠏⠀⢀⠀⢸⠀⠈⠟⡏⠀⠀⠀⠀⠀⠀⠀",
        "⠀⣿⣿⣿⣿⣾⠃⡸⠀⠀⠸⠈⠣⠀⠀⣿⣿⠃⡎⠀⠀⣀⣀⠀⠀⠀⠀⠀⣼⣸⣿⣿⣿⠏⠀⠀⢸⠀⡌⠀⢰⠀⠘⡀⠀⠀⠀⠀⠀⠀",
        "⣰⣿⣿⣿⣿⠇⠀⡇⢸⠀⡆⠀⠀⠀⠀⣿⡏⠀⣧⣶⠭⠗⠺⢽⣶⢤⡀⢰⠃⣿⣿⡿⠃⠀⠀⠀⡇⠀⡇⠀⡟⠀⠀⠃⠀⠀⠀⠀⠀⠀",
        "⣿⣿⡟⣿⠋⠀⢠⠁⠸⠀⡇⠀⠀⠀⢀⣿⠁⢠⡟⣡⠔⠒⠒⠢⣌⠳⣽⠃⢰⣿⣿⠁⠀⠀⠀⢀⠃⢠⠁⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⣿⡟⠀⣿⠀⠀⢸⠀⠀⠀⡇⠀⠀⠠⢻⠏⠀⠘⠏⠀⠀⠀⠀⠀⠀⠙⡾⠀⠘⣿⢿⠀⠀⠀⠀⢸⠀⢸⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⡟⠀⢸⡿⠀⠀⣿⠀⠀⠀⠇⠀⠀⠀⠞⠀⠀⢀⡇⠀⠀⠀⠀⠀⠀⣰⠁⠀⠀⣿⠘⠄⠀⠀⠀⠘⠀⠈⠀⣸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    },
    {
        " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠒⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
        "⠀⠀⠀⠀⠀⠀⡴⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣠⣤⣤⣤⣤⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠖⠛⠉⠒⠲⣄⠀⠀ ",
        "⠀⠀⠀⠀⠀⡞⠀⠀⠀⠀⠀⢀⡇⠀⠀⠀⠀⠀⠀⠀⢀⣠⡴⠶⠚⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠶⢦⣀⠀⠀⠀⠀⠀⠀⠘⣆⠀⠀⠀⠀⠀⢷⠀ ",
        "⠀⠀⠀⠀⠀⡁⠀⠀⠀⠀⠀⠈⠙⣆⠀⠀⠀⢀⡤⣾⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡐⡲⣦⣭⣷⣦⣄⠀⠀⢠⠖⠉⠀⠀⠀⠀⢀⣼⠃ ",
        "⠀⠀⠀⠀⠀⣇⠀⠀⠀⠀⠀⠀⠀⢸⠀⢀⡴⢉⣾⣿⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⣤⢀⣸⡿⣿⣿⣿⣿⣿⣿⣿⣧⡀⣞⠀⠀⠀⠀⠀⠸⡏⠀⠀ ",
        "⠀⠀⠀⠀⠀⠈⠓⠦⠤⣄⠀⠀⢀⣼⣴⠏⠀⣠⡾⠟⢷⣶⣄⠀⠀⣀⠀⣀⠀⢀⣀⣤⡽⣾⣿⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢟⠢⢤⣀⡀⠠⢾⡅⠀⠀ ",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡄⠰⠋⣵⣧⣿⣿⠿⣿⣦⣄⠉⢿⣶⣶⣿⣾⣿⣧⣾⣿⣿⣻⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢧⠀⠘⣇⠀⢀⡿⠀⠀ ",
        "⠀⠀⠀⠀⠀⠀⠀⠀⢰⠊⠀⣰⡼⣿⣿⣿⣿⣄⠈⠻⣿⣷⡄⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠈⣧⡴⠋⢶⡋⠁⠀⠀ ",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠈⠓⣤⠿⣻⣿⣿⣿⣿⣿⣷⣄⠈⠻⣿⡷⠋⠁⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠘⣮⡠⠊⠀⠀⠀⠀ ",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢩⣷⣿⣿⣿⣿⣿⣿⣿⣿⣷⠶⠋⠀⠀⠀⠀⠀⠀⠈⡟⠻⢿⣿⡿⣿⣿⣿⣿⣿⠛⣿⣿⣿⣀⣼⣿⣤⣸⣟⠁⠀⠀⠀⠀⠀ ",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡾⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⣷⣶⣾⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡗⢸⡄⠀⠀⠀⠀⠀ ",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣽⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⡇⠀⠀⠀⠀⠀ ",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣞⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⣀⡀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿⡏⣿⣿⣿⣿⣿⣿⣿⢈⡇⠀⠀⠀⠀⠀ ",
        "⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠐⡙⠇⢀⠀⠀⠀⠀⢸⣿⣿⣿⣿⡿⣿⠀⣿⡿⣻⠁⢻⣿⣿⣿⣿⣿⣿⡀⡇⠀⠀⠀⠀⠀ ",
        "⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠘⠌⢮⣧⠀⠀⠀⢸⡟⣏⢹⢿⠀⣏⠀⠘⣇⣽⠀⠘⣿⣿⣿⣿⣿⣿⣇⢧⠀⠀⠀⠀⠀ ",
        "⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⡟⣥⣄⢹⣿⡷⠀⠀⠀⣀⣀⣀⡀⠦⢭⣧⡀⠀⣸⠻⢻⡼⢸⣷⢇⣠⡶⢿⣏⡀⠀⢸⣿⣿⣿⣿⣿⣿⢸⠀⠀⠀⠀⠀ ",
        "⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⡟⢻⣿⠘⣆⠙⡆⣠⣾⠿⠛⠛⠛⠛⠻⣷⣼⣻⡶⠛⠀⠈⣧⡈⡿⢛⣵⡾⠛⠛⠛⠻⣧⣿⣿⣿⣿⣿⣿⣸⠀⠀⠀⠀⠀ ",
        "⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⡇⢸⣿⡆⡜⠂⣷⢻⣇⠀⠀⠀⣠⠔⠲⣄⠙⣏⠁⠀⠀⠀⠘⠅⢵⡿⠋⡄⢤⡀⠀⠀⢈⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀ ",
        "⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣤⠿⢿⣿⡜⣜⠎⠻⢦⣀⠀⠻⠶⠿⢹⠀⠈⠀⠀⠀⠀⠀⠘⣾⠀⡞⠷⢾⡇⠀⣠⠞⢁⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀ ",
        "⠀⠀⠀⠀⠀⢀⣾⣿⡟⢠⣿⣿⣿⣦⠀⠁⠙⠈⠛⠊⠉⠊⠝⠓⠒⠚⠛⠒⠦⢀⠀⣠⣤⡀⠤⢦⡠⠴⠤⠬⠖⠛⠁⠀⣾⣿⣿⣿⣿⣿⡟⡄⠀⠀⠀⠀ ",
        "⠀⠀⠀⠀⠀⣼⣿⣿⠱⣸⣿⣿⣿⣿⣿⣦⣄⣀⡀⠀⣂⠀⠀⠀⠀⠀⠀⠀⡀⠈⠀⠈⣿⠓⣄⠳⠱⡈⠁⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣧⡇⠀⠀⠀⠀ ",
        "⠀⠀⠀⠀⣰⢻⣿⠃⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠈⠃⢀⡤⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠀⡠⡄⠀⢠⣿⣿⠟⣽⣿⢿⣿⣿⡇⠀⠀⠀⠀ ",
        "⠀⠀⠀⢠⠏⣾⡟⠀⣿⣿⣿⣿⣿⣿⣏⣿⣿⣿⣿⣷⣤⡀⠈⠙⠒⠒⠲⣄⠀⠀⠀⠀⠀⠀⠀⢀⠠⠀⠀⠙⠁⢀⣼⡿⠁⣰⣿⣿⡾⢻⣿⣿⠀⠀⠀⠀ ",
        "⠀⠀⠀⡼⣾⡿⠁⣸⣿⣷⣿⣟⣼⣟⡛⠻⣟⠿⣿⣿⣟⢽⣦⣄⠀⠀⠀⠈⠑⠲⠤⠤⠤⠶⠚⠉⠀⠀⠀⢀⣴⣿⣿⣅⣰⣿⣿⣷⠃⢸⣿⢹⠀⠀⠀⠀ ",
        "⠀⠀⢰⣿⣿⠇⠀⣿⠿⠟⠛⠛⠛⠛⢿⣧⡄⢲⣌⢻⡄⠘⣷⣿⡳⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣾⣿⣿⣿⣿⣿⣿⠟⠛⠛⠓⠼⣿⣯⡇⠀⠀⠀ ",
        "⠀⠀⣾⣿⡿⢠⡾⠥⣤⣀⠀⠀⠀⠀⠀⠙⣿⣄⠹⣆⢻⡄⠻⣯⣷⡆⣟⠳⣤⣄⡀⣀⣠⣴⣶⠋⣿⣿⣿⣿⣿⣿⣿⣿⠛⠀⠀⠀⠀⠀⠈⢿⡇⠀⠀⠀ ",
        "⠀⠀⣿⣾⠁⡞⠀⠀⠀⠸⣏⠉⠱⣆⠀⠀⠈⣿⡆⠸⣆⢳⣡⣹⣿⣷⣿⡟⢻⣷⡿⠟⠋⢠⣿⢠⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⢠⠴⠋⡍⠙⠚⣿⡄⠀⠀ ",
        "⠀⢸⣿⡏⠀⡇⠀⠀⠀⠀⠘⡄⠀⢯⡷⡀⠀⠘⣿⡄⠹⡌⣧⠈⢣⠉⠛⠓⠋⠁⠀⠀⢀⣾⡋⣿⣿⣿⣿⣿⡿⣹⡏⠀⢀⡴⣻⠀⣸⠁⠀⠀⣿⡇⠀⠀ ",
        "⠀⣿⣿⠃⠀⡇⠀⠀⠀⠀⠀⢣⠀⠘⣇⠈⢢⡀⢸⣷⣶⢿⣿⣆⠈⢳⡀⠀⠀⠀⠀⠠⢾⣿⢿⣿⢿⠟⡿⣿⠃⣿⢁⡴⠋⢀⡇⠀⡟⠀⠀⠀⣿⣷⠀⠀ ",
        "⢀⡿⡟⠀⠀⡇⠀⠀⠀⠀⠀⢸⡆⠀⢹⡀⠀⠙⣄⢻⣿⣾⣿⣿⡀⠀⢿⡢⣀⠀⠀⢎⣼⠏⢸⡏⠀⠀⢠⣷⣴⣿⠏⠀⢀⣼⠃⢸⠇⠀⠀⠀⣿⣿⠀⠀ ",
        "⢸⣷⡇⠀⠀⣿⠀⠀⠀⠀⠀⠀⡇⠀⠀⠳⡀⠀⠘⣯⣿⣿⣿⣿⣇⠀⠀⢣⠈⢷⢰⣿⣟⣶⣿⠁⠀⠀⣾⣿⣾⡇⠀⢠⣾⠋⠀⢸⡀⠀⠀⢀⣿⣿⣇⠀ ",
        "⢸⣿⠃⠀⠀⣿⣇⠀⠀⠀⠀⣠⠇⠀⠀⠀⠹⣦⠀⢘⣿⣿⣿⣿⣿⣄⣾⣯⣷⠀⠈⣿⣿⣿⣿⠀⠀⢰⣿⣿⣿⡇⢾⡽⠋⠀⠀⠸⣅⣀⣀⣸⣽⣇⣿⠀ ",
        "⢸⣿⠀⠀⣸⣟⠉⠒⣦⠤⠚⣁⡤⠔⠒⠀⠀⠈⠳⢼⣻⣿⣿⣿⣿⡏⢿⣿⠏⢧⢸⠋⠀⢸⡟⠆⠀⢾⣿⣿⣿⠛⠉⠀⢀⣀⡤⠤⠤⡄⠀⠀⡼⣿⣿⡄ ",
    },
    {
        "⠀⠀⠀⠀⠄⠠⠤⠤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠠⢀⣢⣈⣉⠁⡆⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⡏⢠⣾⢷⢶⣄⣕⠢⢄⠀⠀⣀⣠⠤⠔⠒⠒⠒⠒⠒⠒⠢⠤⠄⣀⠤⢊⣤⣶⣿⡿⣿⢹⢀⡇⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⢻⠈⣿⢫⡞⠛⡟⣷⣦⡝⠋⠉⣤⣤⣶⣶⣶⣿⣿⣿⡗⢲⣴⠀⠈⠑⣿⡟⡏⠀⢱⣮⡏⢨⠃⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠸⡅⣹⣿⠀⠀⢩⡽⠋⣠⣤⣿⣿⣏⣛⡻⠿⣿⢟⣹⣴⢿⣹⣿⡟⢦⣀⠙⢷⣤⣼⣾⢁⡾⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⢻⡀⢳⣟⣶⠯⢀⡾⢍⠻⣿⣿⣽⣿⣽⡻⣧⣟⢾⣹⡯⢷⡿⠁⠀⢻⣦⡈⢿⡟⠁⡼⠁⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⢷⠠⢻⠏⢰⣯⡞⡌⣵⠣⠘⡉⢈⠓⡿⠳⣯⠋⠁⠀⠀⢳⡀⣰⣿⣿⣷⡈⢣⡾⠁⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠙⣎⠀⣿⣿⣷⣾⣷⣼⣵⣆⠂⡐⢀⣴⣌⠀⣀⣤⣾⣿⣿⣿⣿⣿⣿⣷⣀⠣⠀⠀⠆⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠄⠑⢺⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣳⣿⢽⣧⡤⢤⠀⠀⡇⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⢸⣈⢹⣟⣿⣿⣿⣿⣿⣻⢹⣿⣻⢿⣿⢿⣽⣳⣯⣿⢷⣿⡷⣟⣯⣻⣽⠧⠾⢤⠀⡇⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⢇⠤⢾⣟⡾⣽⣿⣽⣻⡗⢹⡿⢿⣻⠸⢿⢯⡟⡿⡽⣻⣯⣿⣎⢷⣣⡿⢾⢕⣎⠀⡇⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⡠⡞⡟⣻⣮⣍⡛⢿⣽⣻⡀⠁⣟⣣⠿⡠⣿⢏⡞⠧⠽⢵⣳⣿⣺⣿⢿⡋⠙⡀⠇⠱⡓⠒⠒⠒⠀⠀⠀",
        "⠀⠀⠀⠀⢰⠠⠁⠀⢻⡿⣛⣽⣿⢟⡁⣭⣥⣅⠀⠀⠀⠀⠀⠀⣶⣟⣧⠿⢿⣿⣯⣿⡇⠀⡇⠀⢀⡇⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⢸⠀⠀⡇⢹⣾⣿⣿⣷⡿⢿⢷⡏⡈⠀⠀⠀⠀⠀⠀⠈⡹⡷⡎⢸⣿⣿⣿⡇⠀⡇⠀⠸⡇⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⢸⡄⠂⠖⢸⣿⣿⣿⡏⢃⠘⡊⠩⠁⠀⠀⠀⠀⠀⠀⠀⠁⠀⠁⢹⣿⣿⣿⡇⢰⢁⡌⢀⠇⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⢷⡘⠜⣤⣿⣿⣿⣷⡅⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣧⣕⣼⣠⡵⠋⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⣸⣻⣿⣾⣿⣿⣿⣿⣾⡄⠀⠀⠀⠀⠀⢀⣀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⢀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⡇⣿⣻⣿⣿⣿⣿⣿⣿⣿⣦⣤⣀⠀⠀⠀⠀⠀⠀⣠⣴⣾⣿⣿⣿⣿⣿⣿⣳⣿⡸⡀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⣸⢡⣿⢿⣿⣿⣿⣿⣿⣿⣿⢿⣿⡟⣽⠉⠀⠒⠂⠉⣯⢹⣿⡿⣿⣿⣿⣿⣿⣯⣿⡇⠇⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⢰⡏⣼⡿⣿⣻⣿⣿⣿⣿⣿⢿⣻⡿⠁⠘⡆⠀⠀⠀⢠⠇⠘⣿⣿⣽⣿⣿⣿⣿⣯⣿⣷⣸⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⢀⡟⢰⣾⢿⣿⣟⣿⣿⣿⣿⣿⡟⣿⣧⠀⠀⠈⠣⡄⡰⠋⠀⢀⢾⣿⡛⣿⣿⣿⣿⣿⣿⣿⣷⡆⠀⠀⠀⠀⠀⠀",
        "⠀⠀⢸⢁⢦⣿⣻⣿⢿⣻⡽⣾⢿⡿⢷⣽⣻⠃⠂⠴⣎⠘⠦⡸⠠⠄⢻⣟⣿⠻⣿⣻⢷⣯⢿⣿⣽⣷⡀⠀⠀⠀⠀⠀",
        "⠀⠀⡇⠎⣼⡷⣿⣟⣿⣯⢿⣽⣞⡇⣸⣷⡇⠰⠗⠐⣺⣀⣼⠒⠒⠦⠰⣿⣯⠇⢳⣯⣿⣞⣿⢾⣿⢿⢳⡄⠀⠀⠀⠀",
        "⠀⢸⡿⢠⣿⣻⣿⢿⣼⣿⣿⣿⣼⣄⡻⢼⣧⠀⣀⣼⠟⣻⡟⢧⣤⣄⢠⣿⡃⢼⣿⢧⣿⣿⡿⣟⣿⣿⡄⢻⡀⠀⠀⠀",
        "⠀⣼⠀⣾⡷⣿⣿⣿⢾⣿⣿⢾⠗⣛⡥⣾⠟⣞⠉⢀⣠⠙⢰⣀⡈⢙⡟⣿⣽⣲⢭⢛⣿⣿⣻⣽⣾⣷⣷⡀⠱⡀⠀⠀",
        "⢠⢛⣰⣿⣟⣿⣿⣿⣿⣿⢯⣿⣧⢹⣽⣻⢾⣮⣷⣠⠗⢪⠐⢧⣼⣷⣶⣾⢷⣯⠏⣼⣿⣻⣯⣿⣿⣿⣯⣷⡄⢣⠀⠀",
        "⡌⡆⣿⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⣦⡹⣿⣟⣾⣳⣿⣧⣼⣴⣝⣛⢾⣷⣯⣿⢊⣼⣿⣿⣿⣿⣿⣿⣿⣿⡿⣷⠈⡇⠀",
        "⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣍⡻⣿⣿⣿⣿⡄⣷⣯⣟⣿⡿⢟⣡⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠐⠀",
    },
    {
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠤⠖⠚⢉⣩⣭⡭⠛⠓⠲⠦⣄⡀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⢀⡴⠋⠁⠀⠀⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠳⢦⡀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⢀⡴⠃⢀⡴⢳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣆⠀⠀⠀",
        "⠀⠀⠀⠀⡾⠁⣠⠋⠀⠈⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢧⠀⠀",
        "⠀⠀⠀⣸⠁⢰⠃⠀⠀⠀⠈⢣⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣇⠀",
        "⠀⠀⠀⡇⠀⡾⡀⠀⠀⠀⠀⣀⣹⣆⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⠀",
        "⠀⠀⢸⠃⢀⣇⡈⠀⠀⠀⠀⠀⠀⢀⡑⢄⡀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇",
        "⠀⠀⢸⠀⢻⡟⡻⢶⡆⠀⠀⠀⠀⡼⠟⡳⢿⣦⡑⢄⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇",
        "⠀⠀⣸⠀⢸⠃⡇⢀⠇⠀⠀⠀⠀⠀⡼⠀⠀⠈⣿⡗⠂⠀⠀⠀⠀⠀⠀⠀⢸⠁",
        "⠀⠀⡏⠀⣼⠀⢳⠊⠀⠀⠀⠀⠀⠀⠱⣀⣀⠔⣸⠁⠀⠀⠀⠀⠀⠀⠀⢠⡟⠀",
        "⠀⠀⡇⢀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⢸⠃⠀",
        "⠀⢸⠃⠘⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠁⠀⠀⢀⠀⠀⠀⠀⠀⣾⠀⠀",
        "⠀⣸⠀⠀⠹⡄⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⠀⡞⠀⠀⠀⠸⠀⠀⠀⠀⠀⡇⠀⠀",
        "⠀⡏⠀⠀⠀⠙⣆⠀⠀⠀⠀⠀⠀⠀⢀⣠⢶⡇⠀⠀⢰⡀⠀⠀⠀⠀⠀⡇⠀⠀",
        "⢰⠇⡄⠀⠀⠀⡿⢣⣀⣀⣀⡤⠴⡞⠉⠀⢸⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⣧⠀⠀",
        "⣸⠀⡇⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⢹⠀⠀⢸⠀⠀⢀⣿⠇⠀⠀⠀⠁⠀⢸⠀⠀",
        "⣿⠀⡇⠀⠀⠀⠀⠀⢀⡤⠤⠶⠶⠾⠤⠄⢸⠀⡀⠸⣿⣀⠀⠀⠀⠀⠀⠈⣇⠀",
        "⡇⠀⡇⠀⠀⡀⠀⡴⠋⠀⠀⠀⠀⠀⠀⠀⠸⡌⣵⡀⢳⡇⠀⠀⠀⠀⠀⠀⢹⡀",
        "⡇⠀⠇⠀⠀⡇⡸⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠮⢧⣀⣻⢂⠀⠀⠀⠀⠀⠀⢧",
        "⣇⠀⢠⠀⠀⢳⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡎⣆⠀⠀⠀⠀⠀⠘",
        "⢻⠀⠈⠰⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⠘⢮⣧⡀⠀⠀⠀⠀",
        "⠸⡆⠀⠀⠇⣾⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠆⠀⠀⠀⠀⠀⠀⠀⠙⠳⣄⡀⢢⡀",
    },
    {
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠻⢷⣦⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣦⣄⣠⡤⠒⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⢾⣤⣤⣤⣴⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠙⠻⣿⣿⣿⣿⣿⣯⣿⣿⣿⣭⣭⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀",
        "⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣿⢿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀",
        "⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⣿⣿⣿⣿⣿⣿⣿⠹⣿⣿⣿⣿⣿⣿⠟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠻⠆⠀⠀",
        "⠀⠰⠿⠿⠿⣿⣿⣿⣿⣿⣿⡿⠀⢠⣿⣿⣿⣿⣿⣿⣿⡄⣿⣿⣿⣿⣿⣿⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⠑⠊⠙⣿⣿⣿⠿⠿⠿⠛⠃⠙⠛⣛⣿⣿⣿⣄⡸⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀",
        "⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⡧⣴⡾⠿⠛⠛⠉⠀⠀⠀⠀⠀⠀⠀⠙⠛⠛⠛⠿⢿⣻⠶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀",
        "⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⡅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀",
        "⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⡿⠋⠉⠉⠻⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀",
        "⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣷⢾⣍⠙⠆⢸⣿⣿⣿⣿⣿⣿⣿⡆⠀",
        "⠐⠀⠴⠀⠀⠀⢹⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠈⠛⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⡧⠴⠋⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀",
        "⠀⠀⠦⠄⠀⠀⠀⠹⣿⣿⠿⣧⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣀⣠⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀",
        "⠀⠀⠀⠀⠀⣀⣀⠀⢀⣿⣿⣿⣿⣿⣶⣦⣤⣀⣀⡀⠀⠀⠀⠀⠀⠀⢀⣤⣴⣾⣿⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄",
        "⠀⠀⠀⠀⠀⢿⣽⠧⠾⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⡄⠀⠀⠀⢸⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇",
        "⠀⠀⠀⠀⠀⠀⠁⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⢻⣿⠿⠛⠉⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣾⣿⣿⣿⣿⣿⠃",
        "⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⡿⢿⣿⣿⠟⠁⠀⣀⣤⠴⠛⠉⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿⣿⣿⣿⣿⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⠟⠋⣀⣾⣋⣤⡤⠖⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⡇⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⡿⠛⠁⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⡏⢸⣿⡿⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⡉⠉⠉⠉⠀⠈⠉⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⢰⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣷⠀⠀⠀⠀⠀⠀⠀⠀",
    },
    {
        "⢀⡀⢠⢴⠇⢦⣍⣸⡴⠊⠭⢝⠋⣛⡽⠒⢒⡭⣵⢿⡇⡤⣿⢶⣷⣌⡒⠾⣝⠒⣓⣎⣼⣡⡷⢟⣣⠓⣜⣶⣿⣿⣿⢟⠭⢲⢭⡟⡽⡱⣿⣿⢫⠵⣻⠟⣱⣷⣿⣿⢿⣷⢹⣟⣇",
        "⠒⡺⠭⠾⠾⢿⣷⡄⠀⡾⣉⠐⡾⣽⢛⣒⢦⡜⢩⢺⣧⡇⣾⠗⣾⡿⣿⣷⣶⢺⠷⠶⡿⠋⢐⠈⣠⡿⠟⠩⢐⠞⠁⡄⠘⣥⡟⢞⡡⢳⣿⢃⣋⡾⠃⡌⣷⣿⣻⣿⢤⣿⣎⣿⢾",
        "⠘⠄⠰⢶⢯⣦⡿⢡⡔⣏⠀⠉⢷⣧⣓⣧⣧⣧⢸⢻⢿⣯⠹⣶⣹⣥⣼⠟⣿⠀⢀⡞⠄⠀⠀⡴⡋⢐⢠⡼⠉⡀⠢⢀⠱⠞⠉⠄⢠⡾⣅⠶⠋⢀⣬⢴⣿⣏⣿⠏⡸⢸⠼⣹⣟",
        "⠄⠀⠱⢭⣤⡾⡁⠰⢣⠈⣓⠍⣛⣾⡏⢿⣱⢻⣘⣟⢸⡼⠀⣿⣇⡾⢁⡾⣡⢈⡞⠚⠒⣳⠾⠷⣤⣵⣚⣁⡂⠤⣣⠏⠡⣠⠖⣠⣿⡼⠃⠀⣀⡿⠠⣻⢻⢹⡏⠀⠁⢸⢁⢻⣯",
        "⠀⠀⠀⠈⠉⣇⢇⠑⣄⠻⣉⣒⢷⣋⡼⢋⣟⡼⠉⣱⢸⣷⠣⠘⣿⡀⣼⣿⠠⡜⣀⠢⣱⡏⢜⣲⠼⠡⡐⢌⡭⢛⠳⣤⣏⣡⠞⣁⡾⠁⡀⣾⢋⡄⢄⣿⢏⡟⠐⣀⡟⣼⠈⢼⢰",
        "⠀⠀⠀⠀⡴⠃⡉⠳⡴⣿⢛⠿⠽⠭⠒⢛⡼⠀⢐⡵⡿⣟⣇⠀⠹⣿⢽⣁⠦⡑⠄⣳⣿⡼⠛⡅⢦⡱⡚⡍⠮⣑⣭⠴⣚⡙⣢⠞⠀⢢⠞⣡⠞⢀⢪⣿⡾⠁⣢⡾⡐⡧⢘⢸⠘",
        "⠀⠀⠀⢲⠁⠀⡱⠠⢔⡪⠷⣷⠦⠞⣫⣹⡧⠼⠛⡆⡇⣿⡻⡄⠀⢻⣿⠛⠿⡽⣯⣭⣭⣭⣭⣯⣭⣽⣗⣾⡯⠝⠦⣙⣲⠔⠡⣰⡜⡕⡲⠋⡀⣢⣿⡝⣡⢞⡵⠁⣲⡇⠌⡾⡀",
        "⠀⠀⠐⣺⠀⡜⠃⢠⠔⠉⠓⢲⢿⡟⢩⠃⡖⠀⠒⣾⡇⡿⠻⠷⣀⠀⢻⡒⢲⣿⣿⣿⠟⠿⣟⣻⣿⣿⣿⣷⡛⢖⣫⣫⣵⡾⠟⡱⡸⢞⡁⣬⠔⣱⢏⠲⢵⣎⣲⢁⣽⡁⢴⠃⣧",
        "⠀⠀⢠⠃⣼⣇⡤⠟⠀⠀⡀⡄⡟⠃⢸⠀⢇⣀⠸⠇⡄⢣⣀⡼⣟⠘⠘⣧⣿⡟⣿⣸⣤⣼⣿⣿⣿⣿⢿⣿⠿⣟⣛⠛⠃⠠⣘⣠⣟⣧⠼⠃⣠⠟⡘⢧⡘⡸⣛⣿⣇⡸⡟⢸⣿",
        "⠀⢀⠃⢀⢞⡾⢡⠃⢀⢰⣷⢹⠗⣆⠠⡙⠁⠒⠒⡄⠙⣤⡰⠞⢙⡄⠉⢹⣝⢥⢿⡿⣟⢿⣻⣯⢿⡿⣿⣷⠈⣛⣽⢷⡚⠭⠅⠒⠉⣀⣠⡞⡑⠪⢑⣪⣶⡿⣿⠟⣺⡿⢧⣿⣹",
        "⠀⠁⡠⠋⣵⡑⠁⡠⢂⣿⡗⣼⢢⣿⣆⠐⠤⡤⠊⠁⠀⠀⠀⠀⠈⢿⡀⢘⣟⢯⢤⡃⠏⣨⠛⣌⠛⢏⣙⠉⠳⣶⠘⠖⡕⡀⣀⣴⡞⠭⡀⣐⡰⢽⡺⠕⢣⠞⠁⡺⡿⠝⣰⡟⣎",
        "⢁⠞⣡⢋⡮⣰⠊⠔⣼⣿⠇⣿⢢⣿⣿⣷⣤⣠⣤⡄⠀⠀⠀⠀⠀⠀⢳⡈⣿⡀⠈⢇⣐⡀⠁⢂⠡⢨⠇⠀⠀⠐⠒⠒⠚⣼⠁⠒⠒⠞⠛⠋⠉⠁⣤⣶⣳⣖⣚⠪⣠⣴⡟⢸⡇",
        "⠴⠊⠐⠁⢰⣁⢴⡾⢣⣿⠄⣿⢆⣿⣿⡇⢹⣟⣿⡇⠀⠀⠀⠀⠀⠀⠈⣇⣼⡷⡄⠀⠀⠉⠙⠒⠲⠎⠀⠀⠀⠀⠀⠀⠀⢿⠀⠀⠀⠀⠀⠤⢲⣿⣛⣻⣽⣿⣿⣿⣯⢾⡀⢾⠡",
        "⠀⠀⠀⢐⠏⡶⢋⢡⠟⡼⣺⣟⣼⡿⣿⡵⡀⢻⣿⣿⠀⠀⠀⠀⠀⠀⠀⢹⡸⣿⢃⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡧⠧⠖⣀⠤⡀⠀⣺⣿⣯⣿⣿⣿⠏⠙⣯⣇⠀⣾⣴",
        "⠀⠀⠀⠱⠚⣅⡲⠛⡰⣳⣹⣿⣿⢇⢸⡇⠣⢳⣿⡿⣇⠀⠀⠀⠀⠀⠀⠈⡇⣷⠡⡳⡀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠚⠁⠀⠀⠀⠈⣾⢲⠋⡡⠛⣯⠟⠁⠀⣰⣿⣇⣷⣽⡟",
        "⠀⠀⢀⣀⠔⠁⢠⡱⡣⢡⠇⣿⣿⠊⢠⣻⡜⡸⣻⡧⠌⣁⣂⣠⣤⣤⠤⠃⢹⣿⢰⠈⠫⢖⣄⣀⠀⠀⠀⠀⣀⠠⠐⠀⠀⠀⠀⠀⠀⠀⢻⡹⢤⣀⡡⠋⠀⠤⣿⣻⣿⣿⣞⣾⣹",
        "⣶⢮⣫⡀⢀⢠⠫⠒⣡⡟⢰⣿⡇⢸⢠⠘⣷⡱⠿⣇⠀⢡⠀⠀⠈⠀⠀⠀⠈⣯⡇⠀⠀⠀⠈⠁⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡨⠆⠈⠑⢀⢠⣾⡿⣟⢳⣿⡿⣯⢿",
        "⡉⠉⣉⣉⣢⣄⢤⣮⣛⠴⣻⣿⠀⢸⣜⠄⣿⢿⣄⢌⠢⡀⢃⠀⠀⠀⠀⠀⠀⢻⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣧⠀⠀⠀⣰⡿⣋⠍⣴⡿⢻⣽⡟⣾",
        "⢿⣟⣹⣽⠟⣚⢛⡋⢦⣱⢿⠣⠀⠜⠜⣼⠏⢸⠋⠨⢕⠌⡒⢥⡀⠀⠀⠀⠀⣸⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢶⢄⢠⣿⢒⢞⡏⠱⣌⡿⣿⣾⢹",
        "⠈⢿⣿⣈⣻⢶⢗⣚⣯⣿⢟⠃⠃⣌⡼⡣⢀⠏⠀⠀⠀⠉⠒⠠⠼⡧⠶⠒⠉⡈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢉⡿⢷⣚⢓⣚⠿⣷⢟⣻⡾⣞",
        "⠀⡌⣾⣟⡏⣿⡉⠛⢋⢿⠃⠄⣺⠟⠜⡱⡟⠀⠀⠀⠀⠀⠀⠀⠀⠈⠢⡀⠀⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡞⡑⠎⢀⠂⢠⣾⢩⡿⣎⣷⢻",
        "⠀⡇⠸⣾⣧⣷⣛⡷⠊⡡⣠⠞⠉⣀⡴⡿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢢⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⡟⡴⠉⢠⠂⣴⣿⣿⢼⡷⣇⣹⣆",
        "⠀⢡⠀⢃⢽⡶⣤⡤⠶⠛⠁⢂⣴⠟⢽⣷⣹⡷⡄⠀⠀⠀⠀⠀⠀⠀⠀⢀⠧⢈⠑⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⣿⣿⣻⠐⠀⠈⣴⡾⠁⣿⡟⣺⣿⠐⡜⢾",
        "⠀⠈⢆⠘⡞⣗⢌⠙⠒⠚⣿⠟⣡⠎⠀⠙⣿⢧⡙⢦⡀⠀⠀⠀⠀⠀⢀⡎⠀⠀⠈⢉⣽⡦⣀⠀⠀⠀⠀⠀⠀⢀⣠⣤⢞⡿⣿⣿⢹⢸⣯⠇⠀⣠⡾⢣⠁⢠⣿⠇⣿⣿⠀⡘⣹",
        "⠀⠀⠀⠑⣴⠈⢳⣭⣶⣾⣵⣾⡟⠀⠀⠀⠈⢳⣮⢡⠙⣦⠀⠀⠀⢠⡟⠁⠀⠀⣴⣿⣿⠁⢺⣷⣤⢠⣤⣶⣾⡟⡍⡆⣾⡅⢻⣿⠚⢸⣽⢠⣴⣿⠁⣿⠀⢸⡏⠀⣿⡇⠐⢠⠘",
        "⠀⠀⠀⠀⢸⠀⠀⠉⠉⣿⠃⣭⠇⠀⠀⠀⠀⠀⠙⢦⣅⣨⣽⢦⣴⣿⠃⠀⢀⡾⢹⣿⠇⡘⣼⣽⣿⣻⣿⣿⣿⢣⠁⢸⣿⠐⢸⣿⡇⢹⣏⣾⣿⢡⢸⣽⢀⡟⠁⢠⣿⠃⠀⠀⡄",
        "⠀⠀⠀⠀⠀⡃⠀⠀⡸⣏⢸⡟⠀⠀⠀⠀⠠⠤⠤⣄⠙⣻⠞⣩⣯⠏⢑⣶⡟⠠⢹⡿⢀⣧⣿⡿⣱⣿⡿⣽⣿⠐⠈⣾⡇⡘⠈⣿⢴⣿⣾⣿⠁⡎⣷⣺⠟⠀⣨⡝⡌⠀⢀⡞⠀",
        "⠀⠀⠀⠀⠀⡇⠀⢰⠃⢿⡿⢧⢴⣒⣒⣒⣤⠭⠽⠒⡉⢢⣽⠏⠙⠚⣾⣿⠐⠠⢺⡇⢰⢹⣿⢱⣿⣿⠇⣟⣿⢨⢰⡟⡰⢡⠁⢿⣻⣿⣿⢃⠆⢿⣿⢁⡤⢖⠏⢰⠄⣡⣿⣷⠀",
        "⠀⠀⠀⠀⠀⢣⡰⢁⠊⣸⠋⡳⢆⡜⣄⠠⠀⢄⡀⢆⣴⠟⠁⠀⠀⣼⣻⣿⠀⠌⣽⠇⠘⣾⡧⣿⣟⡞⢰⡏⣿⢸⣼⣧⡑⢣⠈⡘⣿⣿⠇⡬⢐⢸⡧⢊⣴⣿⣄⢇⣺⠟⠈⢷⣣",
        "⠀⠀⠀⠀⢀⠜⡁⢂⢞⠟⡇⡇⠀⠉⠙⠣⠬⠤⠔⠋⠀⠀⠀⠀⢰⢇⣿⣟⠀⢲⣿⠀⠈⣽⣷⣿⢺⠁⡚⣇⢻⣿⣿⡗⣏⠜⡰⣧⢻⣿⢘⠄⠸⣸⣾⣿⣿⢿⠏⣾⡁⠀⠀⡨⠟",
        "⠀⠀⢀⡔⢁⢢⣰⢫⠎⠘⡇⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣭⣺⣿⠀⠸⣹⠀⠠⣼⠃⡿⣽⠀⣼⢧⠚⣿⣿⡇⢿⣸⡤⠁⢾⣟⢼⣨⢣⢋⣿⣝⣾⣿⠟⡏⣲⡴⣊⡔⠟",
        "⢤⣐⠦⢐⣠⡶⠕⢃⠀⠀⠃⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣟⡲⠮⣽⠀⢐⡏⢸⣿⡇⠀⢼⢂⠇⠝⠘⣇⢸⢦⠱⡅⠊⣿⣀⠳⡻⡌⠼⡋⢁⣷⡾⢟⢫⣉⡣⡪⠔",
        "⣚⣬⣋⠿⠇⠀⠀⠘⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠁⠀⠀⠈⢾⣍⠿⣧⢻⡆⡜⡇⢸⣿⡇⠀⢸⡎⡘⣆⠀⣼⡃⢾⡣⣌⢎⣿⣦⣣⣵⣶⣾⣿⣏⢹⣾⣓⡎⠱⣄⠈⠂",
    },
    {
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣶⣿⣟⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⢀⣿⣿⣿⣿⣿⣿⣿⢿⣿⡇⢹⣿⣿⣿⠈⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⣼⣿⣿⣿⣿⣿⣿⡟⢸⣿⡇⠈⣿⣿⣿⠀⢧⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀",
        "⢀⣿⣿⣿⣿⣿⡿⣿⣷⠸⣿⡇⠀⠹⣿⣿⣇⢈⣧⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀",
        "⣸⣿⣿⣿⣿⣿⡇⣿⣾⡄⣿⡇⣀⣤⠽⣿⣿⡉⠉⢧⠻⣿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀",
        "⣿⢸⣿⣿⣿⣿⣧⣿⣿⢱⣻⡇⠀⠀⠀⠙⢻⣷⣄⣀⢳⣽⣏⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀",
        "⣿⣾⣿⣿⣿⣿⡏⣿⣾⠀⠻⣧⠀⠠⢖⣫⣽⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⡗⠚⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀",
        "⠛⣿⣿⣿⣿⡏⣧⣿⠿⡄⠀⠘⢧⠀⠸⡿⠋⠁⠈⢿⣿⣿⠗⢷⠘⣾⣿⣿⣿⣿⣿⣿⣅⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀",
        "⢸⢹⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠁⠀⠀⠀⠤⠦⠒⠉⠀⠀⠀⢧⠘⣿⣿⣿⣿⣿⣿⣧⠱⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢷⠀⠀⠀⠀",
        "⣿⢸⣿⣿⣿⣿⣇⡈⢻⡟⠓⠤⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢧⣿⣿⣿⣿⣿⣿⡿⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⣇⠀⠀⠀",
        "⡿⢸⣿⣿⣿⣿⣿⡈⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⢸⠀⠀⠀",
        "⡇⠸⣿⣿⣿⣿⣿⡇⣞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⢸⠀⠀⠀",
        "⣧⠀⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⢹⣿⣏⣾⣏⣠⡧⠤⣄⣀",
        "⣿⠀⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡜⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢻⣿⡼⠟⠸⠛⠁⠀⠀⠀⠀⠀",
        "⢹⠀⢻⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⢤⣤⣤⡤⠀⠀⠀⠀⠀⠀⠀⠀⡇⣸⣿⣿⣿⣿⡟⣿⣿⣿⣿⣿⣿⣿⣯⡿⣿⣿⢃⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠈⡇⠸⣿⣿⣿⣿⣿⣿⣿⣷⣀⠀⠘⠦⠤⠄⠀⠀⠀⠀⠀⠀⠀⢰⠇⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⡾⢡⣿⢻⡞⠁⢀⣀⣀⣀⣀⠀⠀⠀⣀⠰⠚",
        "⠀⢹⠀⣿⣿⡇⣿⣿⣿⣿⣿⠟⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣸⣰⣿⣿⣿⣿⣿⠀⢹⣿⡿⣿⣿⣿⠟⠁⣼⠁⣸⠚⠉⠁⠀⠀⠀⠀⣠⠴⠋⠁⠀⠀",
        "⠀⠈⢳⣸⣿⡇⢻⣿⣿⣿⣿⣦⠀⢸⡷⣄⠀⠀⣀⣀⡤⢶⡋⠁⢨⢹⣿⣿⣿⣿⡇⠀⠸⣿⣧⣿⡿⠁⠀⢸⠃⢠⡇⠀⠀⠀⠀⢀⡴⠚⠁⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠈⣿⣇⡀⢻⣿⣿⢹⡇⠀⢸⣧⡈⠉⠉⠁⠀⠀⠀⠉⠓⢒⣿⢻⣿⣿⢷⣧⡀⢠⣷⡈⠛⠀⠀⢀⠏⢠⠏⠀⠀⠀⣠⠖⠉⠀⠀⠀⢀⣀⡤⠄⠂",
        "⠀⠀⠀⠀⠸⣿⡇⠀⢻⣿⣧⢧⡐⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⢃⣿⠿⣡⡏⢹⣿⡾⠁⠀⠀⠀⠀⢸⢠⠏⠀⠀⡤⠞⠁⠀⣠⠴⠒⠋⠉⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠘⣿⠀⠀⠙⢷⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠴⠟⢁⡾⠋⣰⢿⠁⡾⠀⣧⡀⠀⠀⠀⠀⠘⡾⠀⡴⠎⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠙⠓⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣷⡟⠀⠃⠀⡿⣿⣄⠀⠀⠀⢰⠧⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⢃⡇⠀⠀⠀⣿⡜⣟⠷⢤⣀⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣏⡼⠁⢸⠇⢀⠃⡇⢸⠀⢀⡞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    },
    {
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠤⣔⣒⠉⠭⠭⢭⡝⠛⢛⡛⠿⢶⣢⠤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡶⠯⠔⠋⠀⠀⠀⠀⠀⢈⡽⢷⣌⠈⠳⢄⡺⣅⠙⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⣺⠋⢀⠀⠀⡀⠀⡀⢐⣶⣶⣿⠀⠀⢸⣦⡀⠀⣹⣾⣆⠈⣻⡻⠗⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠞⠘⠁⠀⣬⡔⠊⡍⣇⣧⠘⠛⣯⠻⡟⠓⠊⠻⢿⣐⣳⡙⢿⡁⣇⠙⢤⢠⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠎⠀⠀⡄⠀⢹⢠⣦⢧⣿⠘⣤⡤⢽⡆⡿⠤⣤⣄⡼⡆⠉⠹⣭⢷⡸⡄⡇⣴⣻⡿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡎⢠⢠⣾⠁⢀⣾⡟⡇⠀⠉⠇⢹⡇⠊⢹⡁⠣⠺⢷⡀⢿⠀⠀⢻⡆⢳⢷⢸⠙⣽⣷⣳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡘⡼⡾⠃⢀⣴⢏⣿⠃⠀⢰⠀⠀⠀⢳⠈⣿⣿⠀⠀⠀⢇⢼⡄⠀⠀⠃⢸⣸⠈⣆⠈⢿⣿⣇⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣷⢹⠁⠀⣾⠁⣼⢹⢰⠒⡌⡇⢱⢢⠎⣦⣿⣿⣧⡀⠀⠈⠀⠇⠀⠀⠀⠀⣿⣶⡙⠶⣼⣽⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡟⡇⠀⢰⡿⢀⣿⣿⣿⡴⠸⡽⢸⣸⠀⣿⠇⢹⠉⠹⡙⢶⡦⣇⡀⠀⠀⠀⣿⢧⣉⣫⣽⣿⢻⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⡇⠀⠀⡇⣷⢿⠋⠇⠁⠀⠀⠐⢸⢇⠀⠛⠀⢈⣀⣀⠈⢪⣻⡇⠀⠀⠀⠀⢸⣨⢤⣶⢟⢁⣿⢹⠻⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠏⡇⠀⠈⡇⡏⣼⣠⣬⣱⣶⡆⠀⢸⠘⣴⠿⣤⣿⢿⣿⣿⣷⣎⡇⠀⠀⠀⡆⢸⡾⠛⢡⣾⡞⡾⡜⣦⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⣇⣿⣿⢿⣿⢻⡿⠀⠀⠁⠀⠀⠋⣁⣜⣻⣟⣻⣿⡟⠂⠀⠀⡇⢸⠥⣶⣿⠟⠀⢻⢻⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⣇⡿⢷⠘⣿⢿⡇⠀⠀⠀⠀⠀⠀⠀⠘⣗⢩⡟⠉⡇⠀⠀⠀⡇⢸⡾⠟⣅⢰⠀⠘⣿⢿⣍⣻⣿⡇⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⣇⣧⠀⠀⠻⠿⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠁⢰⡇⠀⠀⠀⡇⣸⠀⠘⡏⢸⠀⠀⣿⠘⣿⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⣿⣿⡆⠀⠀⠀⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡇⠀⠀⣆⡇⡏⢸⢠⠇⡎⢸⡀⢺⢠⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⡆⠀⠀⣿⣯⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⢰⣿⡇⣧⡞⢸⢀⡇⠀⡇⢸⡎⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⡤⡄⠀⠀⠀⠀⠇⡇⡆⠀⣸⣿⡝⢆⠀⠀⠀⠀⠀⣀⣀⠀⠀⠀⠀⠀⠀⢀⣶⡇⣤⠏⣾⣷⣟⢀⡎⢸⠘⠀⠁⠈⢿⠸⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⢰⠀⡇⠀⠀⠀⠀⠀⡇⢱⠀⢻⡇⡇⠀⠙⠦⣄⠀⠀⠉⠉⠁⠀⠀⢀⡠⠞⠉⣿⢓⠁⠀⣸⣿⠑⢸⠃⣸⠀⠀⡄⠀⠈⡇⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⢸⠀⠇⠀⠀⠀⠀⢸⡇⠈⢧⢸⡇⠃⠀⢀⠀⡀⠙⠢⣄⣀⣠⠤⠚⡁⠀⠀⠀⣿⡌⠀⢸⡿⣟⡇⡸⠀⡇⡆⡀⡇⢸⠀⢹⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⣸⠀⡇⠀⠀⠀⠀⢸⣷⣀⠀⢸⢿⠀⠀⡸⠀⡇⠀⡄⡆⠀⢸⡀⡔⠁⠀⠀⠀⣿⠅⠀⣼⣧⣿⣿⡇⢸⡇⣣⣇⣇⢨⠀⠈⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⡇⠀⡇⠀⠀⠀⠀⣸⢻⣧⠀⠸⡏⣧⣠⠃⠀⡇⠀⡇⡇⠀⢠⠏⠀⠀⠀⠀⠀⣿⠀⢠⣟⣹⣄⣿⢃⣾⣧⢿⣾⡇⢸⠀⠀⢻⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⣀⣀⡠⣤⣠⣇⠀⣧⠀⠀⠀⠀⣿⢾⣿⡄⠀⡇⠎⢹⠀⠸⣿⠀⡗⢁⣤⠞⠀⠀⠀⠀⠀⢸⣿⠀⣾⠉⣹⡷⢺⠼⢹⠸⡀⡟⣇⣼⡀⠀⢸⡆⠀⠀⠀⠀⠀⠀⠀⠀",
        "⢀⣇⢨⡇⠏⣯⣬⣀⢸⠀⠀⠀⠀⡏⣼⢻⣳⡀⢧⢀⣇⡤⠖⠻⣿⡉⠁⠀⠀⠀⠀⠀⠀⢀⡟⡿⣰⣃⢴⡏⠹⣼⣧⣼⠀⢣⢹⣹⠿⡇⢀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀",
        "⡾⡙⣦⣷⣄⢹⡀⠙⠛⡆⠀⠀⢸⢠⣿⡸⣧⣷⣼⣼⠏⠀⠀⠕⡤⣉⡉⠀⠀⠀⠀⠀⠀⢚⣰⡷⣫⠁⠀⠀⠀⢸⣿⢸⡇⠈⢧⡉⡆⡄⣼⢿⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⢻⢿⠾⡿⠙⠒⢧⠀⠀⣷⠀⠀⣌⡏⡟⡇⠀⡄⣹⣧⠀⠀⡐⡟⠁⠈⠉⢳⡀⠀⠀⠀⡴⠙⠉⠀⣿⡇⠀⠀⢠⡀⢻⡈⣷⠀⠀⢳⣽⡿⣇⡎⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠸⠾⡄⠘⢦⡀⡞⠀⠀⢹⡀⠀⣾⠀⣿⠃⠀⣷⠇⠀⠀⣪⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⢦⠳⡀⠱⡿⣧⠀⠈⣿⣿⣟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⢇⠀⠀⢻⡅⠀⠀⢸⡇⢸⠇⠀⣿⠀⢰⣿⣀⢸⣰⡏⠀⠀⠀⠀⠀⠀⠀⠀⢀⣄⠀⢀⣠⣠⣤⣷⣇⣵⣶⣣⠕⠏⠻⡜⠷⡚⣽⡘⡟⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠘⣆⠀⠸⠆⠀⠀⢸⡇⣿⠀⢸⡇⠀⣿⣿⢉⡽⢧⣤⣄⠀⣠⢿⣀⡠⢤⡖⠁⢹⡍⠁⣿⣧⢸⣧⢀⣾⣏⡇⠀⣰⣠⢷⠀⢻⡏⢧⢧⠀⠙⢦⡀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠈⢳⡀⠀⠀⠀⠈⣷⡇⠀⢸⠳⣶⡯⢝⣿⣷⣤⣼⠉⠏⡟⠫⡏⠀⢈⣿⡦⣶⣻⣋⡉⠙⠙⡟⠛⠯⢍⡭⠭⠵⠒⠚⣆⠀⣿⠈⣾⣆⠀⠀⠻⣦⡀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠈⣧⠀⠀⠀⠀⢿⡅⠀⡎⠀⢻⡇⣴⠏⠙⡟⠛⠿⣶⡷⣶⠿⠯⠛⢊⠉⠉⣀⡼⢁⡤⠚⢳⡆⠀⠈⠇⠄⢸⠀⠀⣿⠀⢸⠈⣎⢿⣦⡀⠀⠘⣷⣄⠀⠀⠀",
        "⠀⠀⠀⠀⠀⢸⡆⠀⠀⠀⠈⢷⣰⣧⡄⣼⠀⡟⠀⠀⠀⠀⠀⠙⢷⣌⣹⡴⠊⠁⠠⢚⣧⠞⢁⡀⠀⣸⠀⠀⠀⠀⠀⠸⡀⠀⣟⡇⢸⠂⠸⡜⡜⣿⣄⠀⠈⢯⣦⠀⠀",
        "⠀⠀⠀⠀⠀⠀⢿⡀⠀⠀⠀⠀⣻⠿⣽⡏⣾⠁⠀⠀⠀⠀⠀⠀⠀⠙⢆⠀⠀⠀⠀⡾⣉⠴⠚⠁⠀⠃⠀⠀⢠⠀⠀⠐⠳⣴⡿⠀⣿⡇⢡⣹⣵⣻⢻⡄⠀⠘⡜⣧⠀",
        "⠀⠀⠀⠀⠀⠀⣸⡇⠀⣀⡤⡞⡏⢣⣹⣷⢇⡀⠀⠀⠀⠀⠀⠀⡄⠳⣄⡙⡒⠒⠚⠀⠀⠀⠀⠀⠀⠀⢀⠀⠇⠀⠀⠀⡴⢁⣡⣸⣽⢱⠀⠉⡿⡿⢸⠁⠀⠀⢡⠸⣇",
        "⠀⠀⠀⠀⠀⠀⢻⢩⠹⡉⣇⢱⣹⣾⢟⢸⢸⠳⡄⠀⠀⠀⠀⠀⠀⠀⣇⠽⡀⠁⠀⠀⠀⠀⠀⠀⠀⠠⢀⠰⠀⠀⣠⠞⣀⠔⣯⠇⣜⣿⠀⠀⢸⡇⣮⠀⠀⠀⠘⣧⣹",
        "⠀⠀⠀⠀⠀⠀⠈⢯⢧⢳⣸⠿⠛⠁⠸⡄⡿⡀⠙⠀⠠⠤⠾⢉⠁⢠⠊⢣⡀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣿⣦⣶⡯⠖⠊⠡⡀⡟⠀⢻⡟⠰⠒⢻⢰⢹⣆⠀⠀⢰⢼⣹",
        "⠀⠀⠀⠀⠀⠀⠀⠘⡏⠉⢧⡀⠀⠀⠀⠑⢱⣧⠀⡀⠀⠀⠀⠀⠀⠀⢲⠀⠉⠂⠀⠀⠀⠀⠀⠀⣠⠋⠀⢸⠀⠀⠀⠀⣰⠻⠳⠀⣿⣧⣇⠀⠸⣾⠀⣿⡄⢀⠇⣰⡏",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠘⡄⠈⢿⠓⠒⠀⠀⢠⡟⠀⠘⠀⠀⠀⠀⠀⠀⠈⣇⠀⠀⠀⠀⠀⠀⢀⠜⠁⠀⠀⢉⠀⠀⠀⠀⠃⠀⢀⣼⡿⣿⡀⡇⠀⡏⣃⣸⣿⣫⠞⡿⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣄⡀⠀⠀⠀⠀⢸⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡄⠸⡗⢦⡀⠠⣁⠀⠀⠀⣠⢼⠀⠀⠀⠀⠀⣠⢊⡟⡴⡏⣇⡇⠀⢸⠈⢹⣿⡇⠀⠈⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣷⡀⠀⠀⠀⠘⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⠀⠙⢦⠁⠀⠈⠁⠀⠀⠁⢰⠀⠀⠀⠀⠈⣡⠏⠀⠀⡟⢿⢃⠀⢸⠀⢸⣇⠇⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⠄⠀⠀⠀⠛⠀⠀⠀⠀⢀⣀⠀⠀⠀⡄⠈⢇⠀⠲⢕⣦⣀⠀⠀⠀⠀⢸⠀⠀⠈⣀⡞⠁⠀⠀⠀⢧⣸⠈⠀⢸⢀⣼⡼⡆⠀⠀⠀",
    },
    {
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣤⣤⣤⣤⣤⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⢶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣯⣓⢦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣿⣿⣿⣿⣿⣾⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⣰⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⣰⢳⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⢠⠏⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⣸⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠛⠛⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣠⠖⠛⣿⠟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢻⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⠛⠛⠛⠋⠀⠀⡤⣖⣿⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢸⣿⣿⠿⣿⣉⡉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠚⠉⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣉⣤⡼⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀",
        "⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣬⣷⣾⣶⣶⣖⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⡿⠜⢧⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠋⣿⣿⣿⠿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣏⢀⠀⣾⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀",
        "⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⡈⠉⠀⠀⠈⠉⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⡟⢃⣼⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀",
        "⠀⠀⠀⠈⢸⣿⣿⣿⣿⡿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀",
        "⠀⠀⠀⠀⢸⣿⣿⣿⣿⡇⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀",
        "⠀⠀⠀⠀⣸⣿⣿⣿⣿⣷⣿⣿⣿⣽⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀",
        "⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣻⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⢿⣧⠀⠀",
        "⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠘⣿⡀⠀",
        "⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡶⠛⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⣿⡇⠀",
        "⠀⠀⢠⣿⠏⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⠞⠉⠀⢀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⡇⠀",
        "⠀⢠⣿⡿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣄⡀⠀⠀⣠⣴⠿⠋⠀⠀⠀⢀⣿⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠈⣻⡿⠛⠆",
        "⢀⣿⣿⠁⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠁⠀⠀⠀⠀⠀⢸⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣀⣴⣿⠣⣄⠀",
        "⢸⣿⡏⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠉⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡉⣦⡈⠧",
        "⢸⣿⣷⣤⣴⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢹⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠻⡄",
        "⠸⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⣿⣻⣿⣿⣿⣿⣿⣿⣽⣿⡟⣯⢻⣿⣿⣿⣿⣧⠀",
        "⠀⣴⡿⣍⠙⠛⠛⢻⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⠛⠷⠶⠦⠀⠀⠀⠀⠀⠀⠀⢸⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⣿⣇⠻⣿⣿⣿⣿⠁",
        "⠀⣿⠀⢙⡀⠀⠀⠈⠙⣿⣿⡟⢛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠷⣦⣄⡀⠀⠀⠀⠀⠀⠀⣠⡾⠟⠛⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀",
    },
    {
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣴⠖⠋⠁⠀⠀⠀⠀⠀⠀⢼⣿⣿⣿⣿⣿⣷⣦⣀⠀⠀⠀⠀⠀⠀⢶⡆⠀⠀⠀⠀r⢠⣆",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠒⢉⣴⠟⠀⠀⠀⠀⠀⠀⠀⢀⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⢸⡇⠀⠀⣀⣸⡇⢸⣿",
        "⠀⠀⠀⠀⠀⠀⠀⠀⢀⡔⠋⠀⡴⢻⡇⣴⡏⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⣀⣤⣴⣿⣾⣿⠿⢿⣇⠀⡇",
        "⠀⠀⠀⠀⠀⠀⠀⡰⠋⠀⢠⡎⣠⣿⣿⣿⣷⡀⣀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠛⠉⢻⠁⠀⠀⠀⠿⠀⠁",
        "⠀⠀⠀⠀⠀⠀⢠⠁⠀⢠⡿⣱⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠉⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣤⣴⣾⡿⠿⠛⠋⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⢸⠀⠀⣼⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⡿⣿⠇⠀⢾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⠉⠘⣷⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠈⠀⢸⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢁⣾⢿⣋⣾⠟⣡⣏⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠡⡀⢿⡆⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⣾⠁⣿⣿⣿⣿⣿⣿⣿⣿⠟⠲⠿⠗⣾⠛⠁⠀⠋⠉⠉⠉⠙⠛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣆⢱⣸⣷⣶⠀⠀⠀⢰",
        "⠀⠀⠀⠀⠀⠀⠀⠀⡷⣄⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣶⣲⣤⣤⣸⡿⣿⣿⣿⣿⣿⣿⣿⣼⣿⡀⢿⣷⡆⠀⣿",
        "⣄⠀⠀⠀⠀⠀⠀⠀⣧⣴⣿⣿⣿⣿⣿⣿⡿⣿⡛⢻⣿⣷⡶⠀⡄⠀⠀⠈⢉⡉⣿⣿⡿⢿⠁⢻⣿⣿⣿⣿⣿⣿⣿⡿⠧⠈⠉⠀⠀⢿",
        "⣿⣷⣦⡀⠀⠀⠀⢠⣾⣿⣿⣿⣿⡟⢉⣿⡇⣿⡍⠉⠉⠀⠀⠀⠃⠀⠀⠀⠀⠀⠀⠀⠀⡜⠀⣸⠟⠼⣿⣿⣿⣿⣿⣷⣀⣠⣤⣤⣤⣤",
        "⣿⣿⣿⣿⣿⡦⣰⠟⢡⣿⣿⣿⣿⡇⠀⢿⡇⠸⣷⡀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⢀⡇⢠⠯⡅⢰⣿⣿⣿⣿⡿⢿⠟⠛⠉⣉⣉⣉",
        "⣿⣿⣿⡿⠋⢠⠏⠀⣼⣿⣿⣿⣿⣿⣄⠸⣷⡀⠈⢣⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠈⣇⠤⠒⣡⣾⣿⣿⣿⣿⣶⣾⣶⣿⠿⠿⠛⠛",
        "⣿⣿⣿⣧⠀⣎⠀⠀⡟⣿⣿⣿⣿⣿⣿⣷⣼⣷⠀⠈⣧⠀⠀⠀⣀⣀⣀⠀⠀⠀⠀⠀⠀⣿⣴⣾⣿⣿⣿⣿⣟⠛⣿⡁⣿⡟⠀⠀⢀⡀",
        "⣿⣿⣿⣿⣧⢯⠑⠤⠱⣜⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⣿⣇⠀⠀⠀⠄⠈⠁⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⣿⡿⣯⠉⠀⠈⢹⡇⢀⣼⣿⠁",
        "⣿⣿⣿⣿⣿⣿⢆⠀⠀⡠⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⡀⠀⠀⠀⠀⠀⢀⣤⠞⠉⣿⣿⣿⣿⣿⣿⣿⣧⠙⣧⡄⠀⠸⣿⠾⠟⢻⣇",
        "⣿⣿⣿⣿⣿⣿⠆⢳⡜⢁⣾⣿⣿⣿⡏⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣠⣴⣾⡿⠃⠀⠀⣿⣿⣿⣿⠻⣿⣿⣿⡷⣌⣿⡆⠀⢠⣤⣤⡈⠻",
        "⣿⣿⣿⣿⣿⠇⣀⠾⠀⣾⠃⣿⣿⣿⣧⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⣿⣿⣿⣿⣀⣿⣿⣿⠇⣸⡟⢳⣶⣿⣿⣿⣇⣼",
        "⣿⣿⣿⢿⣿⣿⣤⣤⡑⣿⡠⠛⣿⣿⣿⣦⣿⣿⣿⣿⣿⠉⠉⠉⠛⠛⠁⠀⠀⠀⠀⠀⣿⣿⣿⡇⢸⣿⣿⢃⡴⡻⠀⢸⣿⣿⣿⣿⣿⣿",
        "⣿⣿⣿⣿⣿⣿⣿⡿⠏⠉⢣⣴⣿⣑⡿⣿⠿⣿⣿⣿⡹⢄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣧⣜⣿⣿⡉⠢⣇⠀⠘⠻⣿⣿⣿⣿⣿",
        "⣿⣿⣿⣿⣿⠿⣏⣀⣤⣴⣿⣿⣿⣿⣖⠛⠉⠉⠉⠉⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⠦⣉⡉⠉⠉⠁⠈⢒⣀⣠⣬⡻⣿⣿⣿",
        "⣿⡿⣿⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⢉⣶⣾⣿⣿⣿⣿⣿⠙⣿⣿",
        "⣿⣧⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣀⠀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠤⠤⠤⠀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⡇⠙⣿",
        "⣿⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠙",
        "⠃⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⡀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷",
        "⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⣀⣀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
    },
    {
        "⠀⠀⠀⠸⡇⠀⠀⠀⠰⠀⠀⠀⠀⠀⠀⠀⠀⣷⠀⠀⠀⠀⢜⠀⠀⠀⣹⡎⢻⣆⠠⢸⠀⠀⠀⠠⡇⠀⠀⠀⣿⠀⣀⣀⣇⡆⠀⠀⠀⢸⠀⠀⠀⢰⠇⠀⠀⠀⡆⡇⠀⠀⠀",
        "⠀⣲⣆⣚⣷⣒⣲⣔⣃⢶⣄⣢⣶⢶⣤⣲⣔⣟⣖⣢⣖⣲⣬⣶⣶⣶⠿⠁⠀⣿⣦⢘⣴⣤⣔⡔⣣⣶⣒⣔⣿⠟⣻⣟⡋⣧⣒⣦⣴⢸⣤⣰⣢⣼⣢⣀⣦⣐⡖⣇⣤⣄⣄",
        "⠀⠀⠀⢸⡇⠀⠀⠀⣷⠀⠀⠀⠨⠀⠀⠀⠀⣿⠀⣴⡿⠟⠉⠁⠀⠀⠀⣀⣼⣿⣾⣿⣿⣿⣿⣿⣷⣶⣦⣿⠁⠀⢿⣧⣇⠇⠀⠀⢀⢸⠀⠀⠀⢸⠇⠀⠀⠀⠃⡇⠀⠀⠈",
        "⢀⣀⣀⣨⣇⣀⣀⣀⣆⣀⣀⣀⣀⢀⣀⣀⣀⣝⣾⡟⠁⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠉⠛⢿⣦⣄⣀⣸⣀⣀⣀⣸⣁⣀⣀⣀⡀⣇⣀⡀⠀",
        "⠈⠈⠁⢰⡏⠉⠉⠀⣇⡏⠉⠉⠘⠘⠉⠈⠉⡞⣿⠃⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠙⢿⣮⢰⠉⠁⠁⢸⡈⠉⠉⠉⡁⡊⠉⠁⠀",
        "⠀⠀⠀⢸⡇⠀⠀⠀⢯⠀⠀⠀⠸⠂⠀⠀⠀⡧⣿⡇⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠈⣿⣾⠀⠀⠀⢸⠂⠀⠀⠀⠈⡆⠀⠀⠀",
        "⠠⠭⠭⢭⡯⠭⠽⠭⡥⡿⠭⠭⠭⠨⠽⢭⣽⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⡏⠉⠛⠙⣿⣿⣿⣿⠋⠀⠀⠀⠀⠀⠀⠀⢀⣿⣯⠄⠧⠴⢬⠕⠔⠦⠄⣭⠇⠂⠀⠀",
        "⠀⠀⠀⢸⡇⠀⠀⠀⡗⡅⠀⠀⢸⠀⣠⣿⣿⣿⣿⣿⣿⣦⣀⠀⠀⣠⣴⣿⣿⣿⡏⠳⠀⠀⡼⢻⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⢸⠀⠀⠀⢸⡄⠀⠀⠀⠈⡇⠀⠀⠀",
        "⢐⣲⣒⣺⣳⣲⣲⣒⣛⣷⣒⣲⣞⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠋⠀⠀⠀⠀⠀⠸⣿⣿⣿⣦⠀⠀⠀⠀⠀⣠⣾⠟⢺⢺⠖⠶⠀⢸⠐⠴⠶⠲⡊⡳⠶⠂⠀",
        "⠀⠀⠀⢸⡇⠀⠀⠀⣏⡇⠀⠀⠨⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣿⣿⣿⣶⣶⣶⣾⣿⣿⣷⣼⣸⠀⠀⠀⢸⠀⠀⠀⠀⠀⡇⠀⠀⠀",
        "⢀⣀⣀⣠⣇⣀⣀⣀⡧⣃⣀⣀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢷⣿⣿⣧⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣄⣀⣸⢄⣀⣀⣀⡀⣇⣀⣀⠀",
        "⠈⠉⠉⢹⡏⠉⠉⠉⣇⡏⠉⠉⢹⠻⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣛⡉⠀⠉⠙⠃⠀⠀⠀⠀⢤⣴⢶⢾⣿⣿⢷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⢹⠉⠉⠉⠉⢃⡏⠉⠁⠑",
        "⠀⠀⠀⢈⡇⠀⠀⠀⣯⡆⠀⠀⢸⣺⢘⣿⣿⣿⣿⣿⣿⡟⠻⠿⢿⣿⣿⣶⣄⠀⠀⠀⠀⠀⠀⢀⣀⣀⣹⣿⡟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⠇⠀⠀⠀⡀⡇⠀⠀⠀",
        "⠘⠛⠛⢳⡟⠛⠛⠛⡏⠟⠛⠛⠻⢸⣿⣿⣿⣿⣿⣿⢿⣜⣄⠀⠀⠀⣩⣿⠟⠀⠀⠀⠀⢰⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠞⠛⠛⠛⣇⡟⠛⠛⢲",
        "⠀⠀⠀⢸⡇⠀⠀⠀⡇⡆⠀⢀⣼⣿⣿⣿⣿⣿⣿⣿⡇⠙⠛⠻⠟⠻⠋⠁⠀⠀⠀⠀⠀⠈⠻⣧⣀⠀⠀⢀⡴⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢸⡄⠀⠀⠀⡄⡇⠀⠀⠀",
        "⠲⠒⠖⢞⡷⠶⠖⠖⣗⠳⢲⣾⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠛⢿⠾⣿⠚⣻⣿⣿⣿⣿⣿⣿⣿⣿⠿⠷⠶⢾⡲⠖⠶⠶⡿⡗⠲⠲⢀",
        "⠀⠀⠀⢸⡇⠀⠀⠀⡇⡇⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⣄⠀⠀⠀⠀⠀⠀⠀⠀⢰⠆⣰⣿⣿⣿⣿⣿⣿⣿⣿⣟⠀⠀⠀⢸⠀⠀⠀⠀⡭⠇⠀⠀⠈",
        "⠀⢤⠤⠼⣧⡤⡤⡤⠧⣦⠽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⢀⣤⡶⣦⡀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡤⣠⢼⢡⠤⠤⠤⠇⠧⡤⠤⠀",
        "⠈⠉⠉⢹⡏⠉⠉⠉⣇⡏⠉⠁⢹⢻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠁⠀⠈⠙⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠉⢹⠊⠉⠉⠉⡇⡏⠉⠉⠙",
        "⠀⠀⠀⢸⡇⠀⠀⠀⡏⡂⠀⠀⢸⢸⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣷⣄⡀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿⡏⠀⢸⠀⠀⠀⠀⡇⡇⠀⠀⠀",
        "⠘⠛⠛⢱⡟⠛⠑⠛⣇⠏⠙⠛⢻⢸⣟⣻⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣦⣄⣀⣠⣤⣶⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣿⣿⠟⠛⠛⢻⠙⠛⠛⠛⡇⡟⠛⠛⠂",
        "⠀⠀⠀⢸⡇⠀⠀⠀⡧⡇⠀⠀⢸⢼⠙⠛⠛⣟⠋⠀⠛⢿⣿⡿⣿⣟⡆⠈⠉⠉⠋⠉⠀⠀⣿⡿⡿⠟⠻⠾⡿⠿⠿⠟⡏⡏⠉⠉⢹⢸⠀⠀⠀⢸⠀⠀⠀⠀⡇⡇⠀⠀⠀",
        "⠨⠭⠭⢯⡭⠭⠭⠯⣟⡯⠯⠭⢭⢭⠭⠭⠽⣭⠭⠭⠭⢭⢨⠭⠯⠽⣿⣤⣀⣀⣤⣤⣶⣿⣿⡇⡭⠭⠭⠭⡭⠯⠭⠭⣇⡽⠭⠭⢭⢸⠭⠭⠽⢭⠩⠽⠯⠭⡅⡭⠭⠭⢥",
        "⠀⠀⠀⢸⡇⠀⠀⠀⡗⡂⠀⠀⢸⢸⠀⠀⠀⣏⠀⠀⠀⠀⢼⠀⠀⠀⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⣷⠀⠀⠀⡇⡇⠀⠀⠘⢸⠀⠀⠀⢸⠁⠀⠀⠀⡗⡇⠀⠀⠀",
        "⣠⣠⣠⣘⣃⣀⣀⣀⡓⣂⣀⣀⣸⢘⣄⣀⣄⣛⣀⣤⣠⣐⣘⣄⣄⣀⣋⣿⣿⣿⣿⣿⣿⣿⣿⣟⣽⣿⠿⠿⠷⠶⠶⣶⣷⣷⣶⣶⣾⣼⣤⣄⣀⣘⢡⣀⣀⣠⡗⣣⣠⣄⠀",
        "⠀⠀⠀⢸⡇⠀⠀⠀⡧⡃⠀⠀⢸⢸⠀⠀⠀⡿⠀⠀⠀⠈⢸⠀⢀⡔⣿⣎⢿⣿⣿⣿⣿⣿⢏⣼⣿⢿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⢿⣮⡂⠀⠀⠀⡯⡇⠀⠀⠈",
        "⣀⣀⣀⣸⣇⣀⣀⣀⣏⣆⣀⣀⣸⢺⣀⣀⣀⡧⣀⣀⣀⣀⣨⡾⣿⣧⢻⣿⣦⣙⠻⣛⣫⣷⣿⣿⢃⣾⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣄⣀⣀⣏⣇⣀⡀⠀",
        "⠘⠓⠒⢲⡟⠚⠓⠛⣷⡞⠒⠚⢲⢲⠒⠒⠓⡇⢓⣶⡶⠟⢩⣾⣿⣿⡜⣿⣿⣿⣿⣿⣿⣿⡿⢳⣾⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡗⠓⠚⡖⡖⠚⠂⠀",
        "⠀⠀⠀⠸⡇⠀⠀⠀⡋⠂⠀⠀⢸⢹⠀⣀⣴⡿⠟⠉⠀⣠⣿⣿⣿⣿⣿⣜⣿⣿⣿⣿⣿⢟⣴⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡇⠀⠀⡧⡇⠀⠀⠀",
        "⠲⠶⠶⢮⡷⠖⠶⠶⡿⡷⠦⠶⢾⣸⣾⠟⠉⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣷⣭⣭⣭⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⠳⠶⠶⡇⡷⠶⠶⢦",
        "⠀⠀⠀⠸⡇⠀⠀⠀⡇⡃⠀⠀⣸⡿⠁⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡟⠀⠀⠀⡇⡇⠀⠀⠀",
        "⢀⣐⣶⣚⣓⣒⣖⣒⣗⣒⣒⣒⣿⡇⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡷⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⢙⣒⣒⣒⡇⣗⣒⣂⣀",
    }

}

return {
    -- TRANSPARENT BACKGROUND
    {

        "xiyaowong/transparent.nvim",
        lazy = false,
    },
    -- STATUIS LINE
    {
        "rebelot/heirline.nvim",
        config = function(plugin, opts)
            local status = require "astronvim.utils.status"
            opts.statusline[4] = status.component.file_info { filename = { modify = ":." } }
            require("plugins.configs.heirline")(plugin, opts)
        end,
        lazy = false,
    },
    -- NOTIFICATION POPUP
    {
        "rcarriga/nvim-notify",
        enabled = false,
    },
    -- STARTER PAGE
    {
        "goolord/alpha-nvim",
        cmd = "Alpha",
        opts = function()
            local dashboard = require "alpha.themes.dashboard"
            dashboard.section.header.val = images[math.random(1, #images)]
            dashboard.section.header.opts.hl = "DashboardHeader"
            dashboard.section.footer.opts.hl = "DashboardFooter"

            local button, get_icon = require("astronvim.utils").alpha_button, require("astronvim.utils").get_icon
            dashboard.section.buttons.val = {
                button("LDR n  ", get_icon("FileNew", 2, true) .. "Новый файл  "),
                button("LDR f f", get_icon("Search", 2, true) .. "Найти файл  "),
                button("LDR f o", get_icon("DefaultFile", 2, true) .. "Недавнее  "),
                button("LDR f w", get_icon("WordFile", 2, true) .. "Найти слово  "),
                button("LDR f '", get_icon("Bookmarks", 2, true) .. "Закладки  "),
                button("LDR S l", get_icon("Refresh", 2, true) .. "Последняя сессия  "),
            }

            dashboard.config.layout = {
                { type = "padding", val = vim.fn.max { 2, vim.fn.floor(vim.fn.winheight(0) * 0.2) } },
                dashboard.section.header,
                { type = "padding", val = 5 },
                dashboard.section.buttons,
                { type = "padding", val = 3 },
                dashboard.section.footer,
            }
            dashboard.config.opts.noautocmd = true
            return dashboard
        end,
        config = require "plugins.configs.alpha",
    },
    -- COLORSCHEMES
    {
        "Mofiqul/adwaita.nvim",
        enabled = true,
        lazy = false,
    },
    {
        "shaunsingh/nord.nvim",
        enabled = true,
        lazy = false,
    },
    {
        "glepnir/zephyr-nvim",
        enabled = true,
        lazy = false,
    },
    {
        "EdenEast/nightfox.nvim",
        enabled = true,
        lazy = false,
    },
    {
        "tanvirtin/monokai.nvim",
        enabled = true,
        lazy = false,
    },
    {
        "savq/melange-nvim",
        enabled = true,
        lazy = false,
    },
    {
        "nyoom-engineering/oxocarbon.nvim",
        enabled = true,
        lazy = false,
    },
    {
        "ellisonleao/gruvbox.nvim",
        enabled = true,
        lazy = false,
    },
    {
        "rebelot/kanagawa.nvim",
        enabled = true,
        lazy = false,
    },
    {
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
            require("catppuccin").setup {}
        end,
        lazy = false,
    },
    {
        'olivercederborg/poimandres.nvim',
        config = function()
            require('poimandres').setup {}
        end,
        enabled = true,
        lazy = false,
    },
}