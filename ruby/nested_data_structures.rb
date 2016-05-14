# Building a data structure of the Premier League
# The structure will include teams
#   - within each team will be a nickname
#   - a hash with name of trophy won and how many times it has been won
#   - an array of players names

premier_league = {
  manchester_united: {
    nickname: 'Man United',
    trophies: {
      league: 20,
      fa_cup: 11,
      champions_league: 3
    },
    players: [
      "Wayne Rooney",
      "Anthony Martial",
      "David DeGea"
    ]
  },
  manchester_city: {
    nickname: 'Man City',
    trophies: {
      league: 4,
      fa_cup: 3,
      champions_league: 0
    },
    players: [
      "Sergio Aguero",
      "Kevin DeBryune",
      "Joe Hart"
    ]
  },
  liverpool: {
    nickname: 'The Reds',
    trophies: {
      league: 18,
      fa_cup: 7,
      champions_league: 5
    },
    players: [
      "James Milner",
      "Firminho",
      "Simon Mignolet"
    ]
  },
  arsenal: {
    nickname: 'The Gunners',
    trophies: {
      league: 9,
      fa_cup: 11,
      champions_league: 0
    },
    players: [
      "Aaron Ramsey",
      "Alexis Sanchez",
      "Petr Cech"
    ]
  }
}
