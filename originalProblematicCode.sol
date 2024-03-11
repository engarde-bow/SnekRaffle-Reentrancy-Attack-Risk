self.recent_winner = recent_winner
self.players = []
self.raffle_state = RaffleState.OPEN
self.last_timestamp = block.timestamp
rarity: uint256 = random_words[0] % 3
self.tokenIdToRarity[ERC721._total_supply()] = rarity 
log WinnerPicked(recent_winner)
ERC721._mint(recent_winner, ERC721._total_supply())
send(recent_winner, self.balance)
