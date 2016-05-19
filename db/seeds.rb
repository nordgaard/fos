
Location.create!([
  {name: "Toyose", address: "3815 Noriega Street", city: "San Francisco", state: "CA", zip: 94122, open_hour: 1, close_hour: 10},
  {name: "Yonkers Cafe", address: "3814 Noriega Street", city: "San Francisco", state: "CA", zip: 94122, open_hour: 1, close_hour: 10},
  {name: "Fire Fly Sports Bar", address: "2457 Noriega Street", city: "San Francisco", state: "CA", zip: 94122, open_hour: 1, close_hour: 10},
  {name: "Tiki Haven", address: "1885 Noriega St", city: "San Francisco", state: "CA", zip: 94122, open_hour: 1, close_hour: 10},
  {name: "Chug Pub", address: "1849 Lincoln Way", city: "San Francisco", state: "CA", zip: 94122, open_hour: 1, close_hour: 10},
  {name: "Flanahan’s Pub", address: "3805 Noriega St", city: "San Francisco", state: "CA", zip: 94122, open_hour: 1, close_hour: 10},
  {name: "Durty Nelly’s", address: "2328 Irving St", city: "San Francisco", state: "CA", zip: 94122, open_hour: 1, close_hour: 10},
  {name: "OneUp", address: "1232 Noriega St", city: "San Francisco", state: "CA", zip: 94122, open_hour: 1, close_hour: 10},
  {name: "Silver Spur", address: "1914 Irving Street", city: "San Francisco", state: "CA", zip: 94122, open_hour: 1, close_hour: 10},
  {name: "Pittsburgh’s Pub", address: "4207 Judah St", city: "San Francisco", state: "CA", zip: 94122, open_hour: 1, close_hour: 10}
])
HappyHour.create!([
  {deal: "Ritas and Fajitas", day_of_week: "Monday", start_hour: 4, end_hour: 7, drinkery_id: 1},
  {deal: "Beer or Die", day_of_week: "Tuesday", start_hour: 4, end_hour: 8, drinkery_id: 2},
  {deal: "Game Time", day_of_week: "Thursday", start_hour: 4, end_hour: 8, drinkery_id: 4},
  {deal: "40 Water", day_of_week: "Friday", start_hour: 4, end_hour: 8, drinkery_id: 8},
  {deal: "Friday Funday", day_of_week: "Friday", start_hour: 5, end_hour: 9, drinkery_id: 10},
  {deal: "Cheeky Cherubs", day_of_week: "Friday", start_hour: 4, end_hour: 5, drinkery_id: 6},
  {deal: "Jack Daniels for the Ladies", day_of_week: "Wednesday", start_hour: 4, end_hour: 7, drinkery_id: 3},
  {deal: "Pabst for the Win", day_of_week: "Friday", start_hour: 4, end_hour: 7, drinkery_id: 7},
  {deal: "Ey tu, Vodka?", day_of_week: "Thursday", start_hour: 4, end_hour: 9, drinkery_id: 5},
  {deal: "Big Beer Deal", day_of_week: "Friday", start_hour: 4, end_hour: 9, drinkery_id: 9},
  {deal: "Sobriety Sucks", day_of_week: "Wednesday", start_hour: 4, end_hour: 6, drinkery_id: 2}
])
UserDrink.create!([
  {drinkery_id: 1, user_id: 1},
  {drinkery_id: 3, user_id: 4},
  {drinkery_id: 4, user_id: 5},
  {drinkery_id: 6, user_id: 8},
  {drinkery_id: 7, user_id: 5},
  {drinkery_id: 1, user_id: 1},
  {drinkery_id: 1, user_id: 12},
  {drinkery_id: 8, user_id: 12},
  {drinkery_id: 8, user_id: 12},
  {drinkery_id: 5, user_id: 13},
  {drinkery_id: 6, user_id: 13},
  {drinkery_id: 9, user_id: 11}
])

Image.create!([
  {image_url: "https://i.kinja-img.com/gawker-media/image/upload/s--h73zmOEU--/c_scale,fl_progressive,q_80,w_800/mslg7z1kkbt7exoiab9e.jpg",drinkery_id: 1, user_id: 1},
  {image_url: "https://i.kinja-img.com/gawker-media/image/upload/s--h73zmOEU--/c_scale,fl_progressive,q_80,w_800/mslg7z1kkbt7exoiab9e.jpg",drinkery_id: 3, user_id: 4},
  {image_url: "https://i.kinja-img.com/gawker-media/image/upload/s--h73zmOEU--/c_scale,fl_progressive,q_80,w_800/mslg7z1kkbt7exoiab9e.jpg",drinkery_id: 4, user_id: 5},
  {image_url: "https://i.kinja-img.com/gawker-media/image/upload/s--h73zmOEU--/c_scale,fl_progressive,q_80,w_800/mslg7z1kkbt7exoiab9e.jpg",drinkery_id: 6, user_id: 8},
  {image_url: "https://i.kinja-img.com/gawker-media/image/upload/s--h73zmOEU--/c_scale,fl_progressive,q_80,w_800/mslg7z1kkbt7exoiab9e.jpg",drinkery_id: 7, user_id: 5},
  {image_url: "https://i.kinja-img.com/gawker-media/image/upload/s--h73zmOEU--/c_scale,fl_progressive,q_80,w_800/mslg7z1kkbt7exoiab9e.jpg",drinkery_id: 1, user_id: 1},
  {image_url: "https://i.kinja-img.com/gawker-media/image/upload/s--h73zmOEU--/c_scale,fl_progressive,q_80,w_800/mslg7z1kkbt7exoiab9e.jpg",drinkery_id: 1, user_id: 12},
  {image_url: "https://i.kinja-img.com/gawker-media/image/upload/s--h73zmOEU--/c_scale,fl_progressive,q_80,w_800/mslg7z1kkbt7exoiab9e.jpg",drinkery_id: 8, user_id: 12},
  {image_url: "https://i.kinja-img.com/gawker-media/image/upload/s--h73zmOEU--/c_scale,fl_progressive,q_80,w_800/mslg7z1kkbt7exoiab9e.jpg",drinkery_id: 8, user_id: 12},
  {image_url: "https://i.kinja-img.com/gawker-media/image/upload/s--h73zmOEU--/c_scale,fl_progressive,q_80,w_800/mslg7z1kkbt7exoiab9e.jpg",drinkery_id: 5, user_id: 13},
  {image_url: "https://i.kinja-img.com/gawker-media/image/upload/s--h73zmOEU--/c_scale,fl_progressive,q_80,w_800/mslg7z1kkbt7exoiab9e.jpg",drinkery_id: 6, user_id: 13},
  {image_url: "https://i.kinja-img.com/gawker-media/image/upload/s--h73zmOEU--/c_scale,fl_progressive,q_80,w_800/mslg7z1kkbt7exoiab9e.jpg",drinkery_id: 9, user_id: 11}
])

