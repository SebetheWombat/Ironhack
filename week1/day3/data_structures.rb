superheroes = [
	0,
	1,
	2,
	{
		allies: [
			0,
			1,
			{
				superpowers: [
					0,
					{
						name: "teleportation"
					}
				]
			}
		]
	},
	4

]

puts superheroes[3][:allies][2][:superpowers][1][:name]

hash = {
	wat: [
		0,
		1,
		{
			wut: [
				0,
				[
					[
						0,1,2,3,4,5,6,7,8,
						{
							bbq: "Yes please!"
						}
					]
				]
			]
		}
	]
}

puts hash[:wat][2][:wut][1][0][9][:bbq]


arr = [
	[
		0,1,2,3,4,
		{
			secret: {
				unlock: [
					0,
					"Nothing to see here!"
				]
			}
		}
	]
]


puts arr[0][5][:secret][:unlock][1]

















