class SingleElimination

  def generateRounds(tournament)
    @match_number = 1
    @matches = []
    @players = tournament.players
    @players = @players.sort { |a,b| (a.n_wins - a.n_loses) <=> (b.n_wins - b.n_loses)}

    tournament.rounds << generate_repechage(@players.slice!(0, repechage))

    (n_rounds - 1).times do |i|
      tournament.rounds << generate_round(i)
    end

  end

  def generate_round(round_num)
    round = Round.new(number: round_num+2)

    print("\n\nn_matches: #{@matches.length}\n\n")

    n_matches(round_num).times do
      match = Match.new
      if @players.empty?
        match.match_1_id = @matches.delete_at(-1).id
      else
        match.player_1_id = @players.delete_at(-1).id
      end

      if @matches.empty?
        match.player_2_id = @players.delete_at(0).id
      else
        match.match_2_id = @matches.delete_at(0).id
      end
      match.number = @match_number
      @match_number = @match_number + 1
      round.matches << match
      match.save
      match.reload
    end

    @matches << round.matches
    round

  end

  def n_matches(round_num)
    2**(n_rounds-round_num-2)
  end

  def generate_repechage(players)
    round = Round.new(number: 1)

    (repechage/2).times do |i|

      match = Match.new
      match.player_1_id = players.delete_at(players.length/2).id
      match.player_2_id = players.delete_at(players.length/2).id
      match.number = @match_number
      @match_number = @match_number + 1
      round.matches << match
      match.save
      match.reload
      @matches << match
    end

    round.number << 1
    round
  end

  def n_rounds
    @n_rounds = Math.log2(@players.length).ceil unless @n_rounds
    @n_rounds
  end

  def repechage
    @repechage = (@players.length - 2**(n_rounds-1))*2 unless @repechage
    @repechage
  end
end
