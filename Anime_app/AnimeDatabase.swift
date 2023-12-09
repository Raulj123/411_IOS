//
//  AnimeDatabase.swift
//  Anime_app
//
//  Created by Gerrit VanderStoel on 12/8/23.
//

import Foundation

struct Anime {
    let pic: String
    let title: String
    let rating: String
    let genre: String
    let synopsis: String
    let streamTime: String
    let streamlink: String
}

struct AnimeLists {
    
    let Winter2023 = [
        Anime(pic: "vinland", title: "Vinland Saga Season 2", rating: "8.80", genre: "Action / Drama", synopsis: "After his father's death and the destruction of his village at the hands of English raiders, Einar wishes for a peaceful life with his family on their newly rebuilt farms. However, fate has other plans: his village is invaded once again. Einar watches helplessly as the marauding Danes burn his lands and slaughter his family. The invaders capture Einar and take him back to Denmark as a slave.", streamTime: "Finished", streamlink: "https://www.crunchyroll.com/series/GEXH3WKK0/vinland-saga"),
        
        Anime(pic: "tomboy", title: "Tomo-chan is a girl!", rating: "7.82", genre: "Romance / Comedy", synopsis: "Tomboy Tomo couldn’t have picked a more awkward high school crush ’cause it’s on her childhood friend, Junichiro, but he only sees her as one of the guys. Despite her pretty looks and signals, nothing gets through to this meathead! Will Junichiro ever realize Tomo’s into him and see her for the cutesy girl she actually is?!", streamTime: "Finished", streamlink: "https://www.crunchyroll.com/series/G0XHWM5Q4/tomo-chan-is-a-girl"),
        
        Anime(pic: "revengers", title: "Tokyo Revengers: Christmas Showdown", rating: "7.69", genre: "Drama / Action", synopsis: "A young delinquient has grown up but finds himself traveling back in time to his middleschool gang after the untimely death of his middle school crush. Will he save his crush by changing the past?", streamTime: "Finished", streamlink: "https://www.disneyplus.com"),
        
        Anime(pic: "misfit", title: "The Misfit of Demon King Academy II", rating: "6.92", genre: "Adventure / Fantasy", synopsis: "Anos Voldigord was a tyrannical Demon King that eradicated humans, spirits, and even the gods, but became bored of eternal warfare and reincarnated with dreams of a peaceful world. However, what awaited him in reincarnation after 2000 years were descendants who became too weak after being accustomed to peace, and all sorts of magic that deteriorated to the extreme.  Anos enters Demon King Academy that gathers and educates those who are viewed as the reincarnation of the Demon King, but the academy could not see through his true powers and ends up branding him as a misfit.", streamTime: "Finished", streamlink: "https://www.crunchyroll.com/series/GY243NN0R/the-misfit-of-demon-king-academy"),
        
        Anime(pic: "angel", title: "The Angel Next Door Spoils Me Rotten", rating: "7.81", genre: "Romance", synopsis: "To thank him for his kind gesture, Mahiru cooks and cleans for her untidy neighbor Amane. But what was just a generous show of gratitude turns into more as they grow closer. This is the story of a sweet romance between a boy and the girl next door.", streamTime: "Finished", streamlink: "https://www.crunchyroll.com/series/G9VHN91DJ/the-angel-next-door-spoils-me-rotten")
    
    ]
    
    let Spring2023 = [
        
        Anime(pic: "demon", title: "Demon Slayer: Swordsmith Village Arc", rating: "8.29", genre: "Action / Adventure", synopsis: "It is the Taisho Period in Japan. Tanjiro, a kindhearted boy who sells charcoal for a living, finds his family slaughtered by a demon. To make matters worse, his younger sister Nezuko, the sole survivor, has been transformed into a demon herself.  Though devastated by this grim reality, Tanjiro resolves to become a “demon slayer” so that he can turn his sister back into a human, and kill the demon that massacred his family.", streamTime: "Finished", streamlink: "https://www.crunchyroll.com/series/GY5P48XEY/demon-slayer-kimetsu-no-yaiba"),
        
        Anime(pic: "oshi", title: "Oshi no ko", rating: "8.73", genre: "Drama / Supernatural", synopsis: "Dr. Goro is reborn as the son of the young starlet Ai Hoshino after her delusional stalker murders him. Now, he wants to help his new mother rise to the top, but what can a child do about the dark underbelly of the entertainment industry?", streamTime: "Finished", streamlink: "https://www.hidive.com/tv/oshi-no-ko"),
        
        Anime(pic: "hell", title: "Hell's Paradise", rating: "8.13", genre: "Action / Adventure", synopsis: "Gabimaru reigns as the strongest and most ruthless assassin in his village. But now finds himself on death row—with only one way out: retrieve the Elixir of Life from a sinister island. Longing for freedom, he accepts the challenge. But with fellow convicts vying for the same prize and demonic beasts lurking, how will Gabimaru survive this harrowing quest?", streamTime: "Finished", streamlink: "https://www.crunchyroll.com/series/GJ0H7Q5ZJ/hells-paradise"),
        
        Anime(pic: "drstone", title: "Dr. Stone: New World", rating: "8.15", genre: "Adventure / Comedy", synopsis: "Several thousand years after a mysterious phenomenon that turns all of humanity to stone, the extraordinarily intelligent, science-driven boy, Senku Ishigami, awakens.  Facing a world of stone and the total collapse of civilization, Senku makes up his mind to use science to rebuild the world. Starting with his super strong childhood friend Taiju Oki, who awakened at the same time, they will begin to rebuild civilization from nothing...  Depicting two million years of scientific history from the Stone Age to present day, the unprecedented crafting adventure story is about to begin!", streamTime: "Finished", streamlink: "https://www.crunchyroll.com/series/GYEXQKJG6/dr-stone"),
        
        Anime(pic: "delusion", title: "Heavenly Delusion", rating: "8.22", genre: "Adventure / Mystery", synopsis: "After a disaster strikes the world creating man-eating monsters, 15 years later a facility is built to nurture the next generation. However, those within begin to see their isolation as not what it seems.", streamTime: "Finished", streamlink: "https://www.disneyplus.com")
    ]
    
    let Summer2023 = [
        
        Anime(pic: "jjk", title: "Jujustu Kaisen Season 2", rating: "8.89", genre: "Action / Fantasy", synopsis: "Yuji Itadori is a boy with tremendous physical strength, though he lives a completely ordinary high school life. One day, to save a classmate who has been attacked by curses, he eats the finger of Ryomen Sukuna, taking the curse into his own soul. From then on, he shares one body with Ryomen Sukuna. Guided by the most powerful of sorcerers, Satoru Gojo, Itadori is admitted to Tokyo Jujutsu High School, an organization that fights the curses... and thus begins the heroic tale of a boy who became a curse to exorcise a curse, a life from which he could never turn back.", streamTime: "Thursday: 10am PST", streamlink: "https://www.crunchyroll.com/series/GRDV0019R/jujutsu-kaisen"),
        
        Anime(pic: "jobless", title: "Mushoku Tensei: Jobless Reincarnation Season 2", rating: "8.31", genre: "Adventure / Drama", synopsis: "When a 34-year-old underachiever gets run over by a truck, his story doesn't end there. Reincarnated in a new world as an infant, Rudy will seize every opportunity to live the life he's always wanted. Armed with new friends, some freshly acquired magical abilities, and the courage to do the things he's always dreamed of, he's embarking on an epic adventure—with all of his past experience intact!", streamTime: "Finished", streamlink: "https://www.crunchyroll.com/series/G24H1N3MP/mushoku-tensei-jobless-reincarnation"),
        
        Anime(pic: "zom100", title: "Zom 100: Bucket List of the Dead", rating: "8.00", genre: "Action / Adventure", synopsis: "With three years under his belt at the company from hell, Akira Tendo is mentally and physically spent. All at the ripe old age of twenty-four. Even his crush from Accounting, Saori, wants nothing to do with him. Then, just when life is beginning to look like one big disappointment, it happens. The zombie apocalypse descends on Japan! Surrounded by hordes of hungry zombies, Akira comes to a realization that will forever change his life…", streamTime: "Finished", streamlink: "https://www.crunchyroll.com/series/GJ0H7QGQK/zom-100-bucket-list-of-the-dead"),
        
        Anime(pic: "horimiya", title: "Horimiya: The Missing Pieces", rating: "8.23", genre: "Romance / Comedy", synopsis: "When the popular Hori and the gloomy Miyamura meet, they reveal another side of themselves. Could this be the start of something new?", streamTime: "Finished", streamlink: "https://www.crunchyroll.com/series/G9VHN9P43/horimiya"),
        
        Anime(pic: "bleach", title: "Bleach: Thousand-Year Blood War - The Separation", rating: "8.72", genre: "Action / Adventure", synopsis: "After a brutal surprise attack by the forces of Quincy King Yhwach, the resident Reapers of the Soul Society lick their wounds and mourn their losses. Many of the surviving Soul Reaper captains train to battle without their Bankai, the ultimate technique wielded by the fiercest warriors.", streamTime: "Finished", streamlink: "https://www.disneyplus.com")
    ]
    
    let Fall2023 = [
        
        Anime(pic: "sheild", title: "The Rising of the Shield Hero Season 3", rating: "7.41", genre: "Action / Fantasy", synopsis: "Iwatani Naofumi, a run-of-the-mill otaku, finds a book in the library that summons him to another world. He is tasked with joining the sword, spear, and bow as one of the Four Cardinal Heroes and fighting the Waves of Catastrophe as the Shield Hero. Excited by the prospect of a grand adventure, Naofumi sets off with his party. However, merely a few days later, he is betrayed and loses all his money, dignity, and respect. Unable to trust anyone anymore, he employs a slave named Raphtalia and takes on the Waves and the world. But will he really find a way to overturn this desperate situation?", streamTime: "Friday 10:00am PST", streamlink: "https://www.crunchyroll.com/series/G6W4QKX0R/the-rising-of-the-shield-hero"),
        
        Anime(pic: "frieren", title: "Frieren: Beyond Journey's End", rating: "9.12", genre: "Action / Drama", synopsis: "After the party of heroes defeated the Demon King, they restored peace to the land and returned to lives of solitude. Generations pass, and the elven mage Frieren comes face to face with humanity’s mortality. She takes on a new apprentice and promises to fulfill old friends’ dying wishes. Can an elven mind make peace with the nature of life and death? Frieren embarks on her quest to find out.", streamTime: "Friday 8:00am PST", streamlink: "https://www.crunchyroll.com/series/GG5H5XQX4/frieren-beyond-journeys-end"),
        
        Anime(pic: "spy", title: "Spy X Family Season 2", rating: "8.19", genre: "Action / Comedy", synopsis: "World peace is at stake and secret agent Twilight must undergo his most difficult mission yet—pretend to be a family man. Posing as a loving husband and father, he’ll infiltrate an elite school to get close to a high-profile politician. He has the perfect cover, except his wife’s a deadly assassin and neither knows each other’s identity. But someone does, his adopted daughter who’s a telepath!", streamTime: "Saturday 8:30am PST", streamlink: "https://www.crunchyroll.com/series/G4PH0WXVJ/spy-x-family"),
        
        Anime(pic: "goblin", title: "Goblin Slayer 2", rating: "7.45", genre: "Action / Adventure", synopsis: "I'm not saving the world. I just kill goblins. Rumor has it that, in a certain guild in the middle of nowhere, there is an extraordinary man who has climbed all the way to the Silver rank just by killing goblins. At the same guild, a priestess who's just become a new adventurer has formed her first party... and the man who ends up rescuing that party when they get into trouble is none other than the Goblin Slayer.", streamTime: "Friday 6:30am", streamlink: "https://www.crunchyroll.com/series/G6VDMN306/goblin-slayer"),
        
        Anime(pic: "shadow", title: "The Eminence in Shadow Season 2", rating: "8.55", genre: "Action / Comedy", synopsis: "When Cid is isekai’d to another world, he creates an underground organization to live out a fight against a made-up cult. Little does he know the cult is real, and they’re not happy his power fantasy just impeded their plans!", streamTime: "Sunday 4:00pm PST", streamlink: "https://www.hidive.com/tv/the-eminence-in-shadow?q=The+Eminence+in+Shadow")
        
    ]
}
