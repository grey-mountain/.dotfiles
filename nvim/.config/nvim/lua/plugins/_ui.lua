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
    -- {
    --     "rebelot/heirline.nvim",
    --     config = function(plugin, opts)
    --         local status = require "astronvim.utils.status"
    --         opts.statusline[4] = status.component.file_info { filename = { modify = ":." } }
    --         require("plugins.configs.heirline")(plugin, opts)
    --     end,
    --     lazy = false,
    -- },
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

            local get_icon = require("astroui").get_icon
            dashboard.section.buttons.val = {
                dashboard.button("LDR n  ", get_icon("FileNew", 2, true) .. "Новый файл  "),
                dashboard.button("LDR f f", get_icon("Search", 2, true) .. "Найти файл  "),
                dashboard.button("LDR f o", get_icon("DefaultFile", 2, true) .. "Недавнее  "),
                dashboard.button("LDR f w", get_icon("WordFile", 2, true) .. "Найти слово  "),
                dashboard.button("LDR f '", get_icon("Bookmarks", 2, true) .. "Закладки  "),
                dashboard.button("LDR S l", get_icon("Refresh", 2, true) .. "Последняя сессия  "),
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
        config = function(...) require "astronvim.plugins.configs.alpha"(...) end,
    },
}