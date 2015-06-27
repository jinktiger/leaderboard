require "pry"

def game_info
   [
    {
      home_team: "Patriots",
      away_team: "Broncos",
      home_score: 7,
      away_score: 3
    },
    {
      home_team: "Broncos",
      away_team: "Colts",
      home_score: 3,
      away_score: 0
    },
    {
      home_team: "Patriots",
      away_team: "Colts",
      home_score: 11,
      away_score: 7
    },
    {
      home_team: "Steelers",
      away_team: "Patriots",
      home_score: 7,
      away_score: 21
    }
  ]
end

# YOUR CODE HERE
leaderboard = {
  "Colts" => {rank: 0,
    wins: 0,
    losses: 0
  },
  "Broncos" => {rank: 0,
    wins: 0,
    losses: 0
  },
  "Patriots" => {rank: 0,
    wins: 0,
    losses: 0
    },
  "Steelers" => {rank: 0,
    wins: 0,
    losses: 0
  }
}

game_info.each do |info|
  if info[:home_score] > info[:away_score]
    leaderboard[info[:home_team]][:wins] += 1
    leaderboard[info[:away_team]][:losses] += 1
  else
    leaderboard[info[:away_team]][:wins] += 1
    leaderboard[info[:home_team]][:losses] += 1
  end
end


ranks = leaderboard.sort_by { |team, record| record[:wins]}.reverse
rank = 1
ranks.each do |key, value|
  value[:rank] = rank
  rank += 1
end
# difference between reverse and reverse!

puts ranks
#puts " ----------------------------------------------- "
#puts " "
