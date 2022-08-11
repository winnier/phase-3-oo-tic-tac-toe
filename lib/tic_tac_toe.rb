class TicTacToe

    def initialize
        @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    end

    WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
        [0, 3, 6], [1, 4, 7], [2, 5, 8],
        [0, 4, 8], [2, 4, 6]]

    def display_board
        puts @board 
    end

    def input_to_index(input)
    input.to_i - 1
    end

    def move(index, token="X")
        @board[index] = token
    end

    def position_taken?(index)
        if @board[index] == " "
            return false
        else
            return true
        end
    end

    def valid_move?(position)
        if position <= 9 && position >= 0
            true 

        else 
            return false
        end
    end

    def turn_count
        @board.count { |x| x != " " }
    end

    def current_player
        if turn_count.even?
            return "X"
        else turn_count.odd?
            return "O"
        end
    end

    def turn
        gets input
        index = input_to_index(input)
        if  valid_move?(index)
            token = current_player
            move(index, token)
            display_board
        else
            turn
        end
    end

    def won?


    end
end

            # position_taken?(position)