-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2021 at 11:47 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsweek`
--
CREATE DATABASE IF NOT EXISTS `newsweek` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `newsweek`;

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `date` varchar(32) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `headline` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `tldr` text CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `article` text CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `photo` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `category` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `archive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `date`, `headline`, `tldr`, `article`, `photo`, `category`, `archive`) VALUES
(1, '05/28/21', 'Could U.S. Defeat Iran\'s Navy? This Exercise Shows War Would Not', 'Could U.S. Defeat Iran\'s Navy? This Exercise Shows War Would Not Be Easy\r\n', 'The United States is widely cited as the world\'s foremost military power, but the country has a spotty record when it comes to asymmetrical warfare. Now-infamous war games conducted nearly 17 years ago showed a maritime matchup against tactics similar to those of Iran would likely prove extremely deadly for the Navy.\r\n                A new wave of tensions between longtime foes Washington and Tehran was set off by alleged reports of Iran pursuing new missile activity in the region, just as it prepared to commemorate the U.S.\' unilateral pullout from a 2015 nuclear deal by stepping back from some of its own commitments to the historic agreement. Among these alleged threats were satellite imagery purporting to show small traditional sailing vessels known as dhows being fitted with cruise missiles.\r\n                Iran\'s ambassador to the United Nations Majid Takht Ravanchi dismissed these assessments, telling CBS News on Friday that \"we do not fire missiles out of small boats.\" He rejected such \"fake intelligence\" as deliberate attempts to set up the pretext for conflict?not unlike the false claims that led up to the 2003 invasion of Iraq.\r\n                Iran\'s two maritime forces?its conventional navy and the navy of the elite Revolutionary Guards?do, however, maintain a missile-equipped fleet of fast attack craft that it claims could take out even the most advanced U.S. warships although some have dismissed the capabilities of such assets. In a mixed computer and live-fire simulation in 2002, a \"Red Team\" armed with vessels and strategies not unlike those known to be employed by Iran once pummeled a \"Blue Team\" representing the U.S. to the point where the Pentagon needed to step in to ensure a friendly victory.\r\n                The U.S. was already on the path to war with Iraq in 2002, after it accused the country of possessing weapons of mass destructions and threatening regional stability through missile activity and support for militant groups. From July 24 through August 15, the since-dismantled Joint Forces Command conducted a $250 million dollar exercise known as Millennial Challenge that pitted the U.S.\' Blue Team led by Army General Lieutenant General Burwell B. Bell III against a Red Team representing an oil-rich Persian Gulf nation, most associated with either Iran or Iraq, but in actuality led by retired Marine Corps Lieutenant General Paul Van Riper.\r\n                Despite being significantly outgunned by a much more technologically-advanced adversary, Van Riper launched a massive shock cruise missile salvo that overwhelmed the Blue Team\' Aegis Ballistic Missile Defense System radars, sinking a significant portion of what was the equivalent to a strike carrier group. He then led a shock guerilla-like assault of fast attack craft that finished off much of what remained using missiles and suicide charges.\r\n                As Micah Zenko recounted in his 2015 book Red Team: How to Succeed by Thinking Like the Enemy, Bell admitted that Van Riper\'s forces had \"sunk my damn navy,\" and had inflicted \"an extremely high rate of attrition, and a disaster, from which we all learned a great lesson.\"\r\n                Rather than concede the losses, however, the Pentagon\'s control team overseeing the exercise simply chose to bring the fallen back to life and then further artificially constrain the Red Team\'s abilities in a way that it could not possibly succeed, a disgruntled Van Riper later recounted in a private e-mail leaked by the Army Times. \"Instead of a free-play, two-sided game,\" he argued, \"it simply became a scripted exercise.\"\r\n                While the Pentagon justified its decision by wanting to employ the full extent of what was a costly, complex undertaking involving multiple real-life U.S. forces that had been scheduled to appear in the war games, many felt the \"great lesson\" was lost as casualties mounted during the Iraq War. Speaking to Newsweek just two weeks after the 2003 invasion, the late U.S. career diplomat and Red Team civilian leader for Millennial Challenge 2002 Robert Oakley said Pentagon officials \"felt that it was unimportant,\" something he felt was a mistake.\r\n                Oakley warned of a U.S. \"temptation to overestimate our sophistication, our superiority in technology, our superiority in weapons\"?citing examples in Vietnam and Lebanon. \"I think we do this frequently. We get carried away by our weapons, firepower, superiority, technology, all this kind of stuff, and we fail to look at the human factor. People will look for a chink in our armor, the same way David found a chink in Goliath\'s armor.\"\r\n                Fast forward 16 years?during which the U.S. has seen its troops only further entrenched in more murky post-9/11 conflicts?Arkansas Senator Tom Cotton told PBS on Tuesday that the U.S. would defeat Iran in \"two strikes\"?\"the first strike and the last strike.\" Many other officials and experts disagreed, as Cotton\'s assessment came despite the fact that Iran was a much larger country, with the Middle East\'s largest standing army and missile arsenal, as well as countless Shiite Muslim militia fighters aligned to its revolutionary Shiite Muslim ideology across the region.\r\n                While many have compared the Trump administration\'s Iran approach to that of former President George W. Bush\'s ahead of the Iraq War?including the hawkish influence of John Bolton?both Trump and various Iranian leaders have expressed the fact that they did not seek a war between their two countries.\r\n                Still, the White House\'s decision to unilaterally leave the landmark 2015 nuclear deal has left Tehran skeptical of further diplomacy and Newsweek confirmed a National Security Council meeting last week in which Acting Defense Secretary Patrick Shanahan drew up offensive and retaliatory military options for Iran at Bolton\'s request, further escalating an already tense situation in the Persian Gulf.', 'pic4.png', 'WORLD', 0),
(2, '05/28/21', 'Eurovision 2019: Israelis and Palestinians Fight to Be Heard', 'Eurovision 2019: Israelis and Palestinians Fight to Be Heard', 'International performers have gathered in Tel Aviv for one of the world\'s most popular talent shows, but the 2019 Eurovision Song Contest? comes after a spike in violence that has defined the decades-long conflict between Israelis and Palestinians.\r\n\r\nThe singing contest is just one of many high-profile events occurring in the Middle East this May, a month marked with a great deal of history for Israel, a young country with borders that have still yet to be defined. On Tuesday, Israel celebrated its 71st Independence Day, marking the beginning of the world\'s only Jewish-majority country. On Wednesday, Palestinians also recognized the 71st anniversary of the Nakba, referring to the \"catastrophe\" ensuing from the mass displacement of Palestinians that reflected a very different history of Israel\'s founding in 1948.\r\n\r\nThe dueling narratives have become an intrinsic part of Israel\'s image, both at home and abroad, and clashes between the two sides turned fatal earlier this month. Several Palestinians were killed while demonstrating at the border of the Gaza Strip and in airstrikes, to which Islamist Palestinian militant group Hamas responded with its biggest barrage of rockets against Israel since the two sides went to war in 2014. Israel responded with its own massive show of force, causing death and destruction in new airstrikes on the small Palestinian-controlled enclave.\r\nThen, however, came a quick calm, a rare occurrence in the storied Israeli-Palestinian conflict. And while Eurovision may come to dominate international coverage of Israel on Saturday, at home, peace is as far away as ever.\r\nIdo Aharoni, a former soldier with 25 year of service at the Israeli Foreign Ministry and who recently served as Israel\'s consul general in New York, told Newsweek that, \"Israel\'s overall security doctrine, established in the early days of the state, proved to be a big success.\"\r\nHe identified the three main branches of this strategy asbuilding a big military, pre-emptive strikes and deterring threats via advanced weapons systems, such as the Iron Dome that intercepted a number of incoming rockets earlier this month.\r\n\r\nAharoni claimed Palestinians adopted a \"soft underbelly doctrine,\" which he described as, \"Attacking Israel, not necessarily in order to destroy the country, but to effectively diminish the value of its brand and its main civilian assets.\" Such targets, he said, include Israel\'s \"seven consecutive record-breaking years in tourism, dramatic rise in direct foreign investment and global recognition in the country\'s creative prowess.\"\r\nEurovision, thus created a perfect opportunity to strike, Aharoni argued. Israel made its Eurovision debut in 1973 and scored its first title in 1978. It hosted the following year and won again, but the 1980 Eurovision contest ended up being held in The Hague, however, as Israel declined due to budgetary reasons. It won again in 1998 and hosted the 1999 event, followed by Israeli singer Netta\'s most recent win in Portugal last year.\r\n\r\nWith some 200 million viewers worldwide and what The Times of Israel reported to be a boost of 10,000 tourists, the 64-year-old competition between dozens of mostly European countries?but also including Israel, Morocco and, in recent years, Australia?is a lively representation of Israel\'s commercial success.\r\n\r\nButthe recent rocket strikes, which killed four people and injured several more, may have sought to exploit this success.\r\n\r\nIsrael\'s military response killed up to 25 Palestinians, which reportedly included two children, a pregnant woman and a mid-level Hamas operative. Aharoni said Israel\'s detractors hoped for a more \"disproportionate response\" in an attempt to discredit Israel ahead of the contest.\r\n\r\n\"Israel had to display maximum restraint to avoid military escalation in the face of growing internal push for harsher response,\" Aharoni said.\r\nDiana Buttu, a lawyer and former spokesperson for the Palestine Liberation Organization, told Newsweek, however, that, \"what Israel is doing can hardly be classified as \'restraint\' nor was it done to salvage a failing Eurovision.\" Moreover, she said it \"was important to both understand the chronology and Israel\'s actions.\"\r\nThe recent tit-for-tat escalations between the two sides accompanied a more than year-long series of weekly demonstrations called the \"Great March of Return.\" Palestinian protestors on the Gaza border have demanded they be able to live on the lands they inhabited before the establishment of Israel and the subsequent conflicts that led to a shift in the disputed region\'s demographics.\r\nIsrael, backed by top international ally the U.S., has blamed much of the region\'s unrest on Hamas, while others, such as the United Nations Human Rights Council?from which the U.S. has recently withdrawn, partially due to a perceived anti-Israel bias?have blamed Israel for opening fire on protestors, killing some 300 since last year, according to Gaza\'s Health Ministry. Many of these casualties came last May, when?just three days after Israel won the Eurovision 2018 contest in Portugal?Palestinians suffered their deadliest day since the 2014 war.\r\n\r\nButtu disputed the fact that Israeli security forces fired in self-defense and argued that, \"Israel has faced absolutely no consequences for these murders and continues to kill with impunity.\"\r\n\r\n\"Failing to understand that Israel has continued to impose a brutal siege on Gaza for more than 13 years while also gunning down those who seek freedom, will only perpetuate the situation?for without understanding that the root cause of this violence is Israel\'s military occupation and the international community\'s failure to end it, one can never understand what is happening in Gaza,\" she added. \"Worse still, by portraying Israeli action as \'restraint\' is to only fuel Israel\'s next bombing campaign.\"\r\nIsrael has launched at least three major wars against Gaza since 2006, the year Hamas won Palestinian elections and one year after Israeli forces disengaged from the roughly 141-square mile strip of nearly 2 million people. Hamas took over the strip in 2007, causing a rift in the ruling Palestinian National Authority. Israel, however, has managed to exert control over much of daily life in Gaza by regulating its boundaries by air, land and sea, citing security concerns.\r\n\r\nGaza\'s only other land border is with Egypt, which helped to mediate an end to the recent spike in tensions and was one of only two Arab nations to have signed a peace treaty with Israel. Still, signs of the seemingly intractable conflict continued to haunt the country in the lead up to Eurovision.\r\nEven beforethis year\'s Eurovision contest came to Israel, the country was the subject of an international campaign known as the Boycott, Divest and Sanctions (BDS) movement. Critics of Israel\'s policies toward Palestinians have pressured artists into canceling shows, a tactic that has seen notable successes, with cancellations from performers including New Zealand singer-songwriter Lorde just last year. Others such as Roger Waters?the U.K.\'s Pink Floyd rocker known for his outspoken pro-Palestinian views?have vowed to never play in Israel unless it halts what the U.N. recognizes as an occupation of some Palestinian territories.\r\n\r\nBrian Eno, another high-profile artist from the U.K., in support of BDS, has pledged his support for an alternative Eurovision event called \"Globalvision\" to be held Saturday in the Palestinian city of Ramallah and the largely Arab Israeli city of Haifa as well as abroad in London and Dublin, the Agence France-Presse reported. Another contest called \"Gazavision\" features local artists also opposing the main event in Tel Aviv.\r\n\r\nA petition calling for the European Broadcasting Union to withdraw Israel as a host drew more than 43,000 signatures, but the BDS tacticof boycotts has proved controversial in pro-Israel circles. President Donald Trump\'s new Special Envoy to Monitor and Combat Anti-Semitism Ellen Carr have likened its tenets to prejudice against people of the Jewish faith. In a rebuke to those seeking to steal the spotlight from Tel Aviv, Israel is set to host Madonna, who defied calls to cancel her appearance.\r\nTheatrics aside, the threat of renewed violence have lingered in Tel Aviv. On Tuesday, the night of Eurovision\'s first semi-final, the online webstream of Israeli public broadcaster Kan was interrupted by an Israeli military message warning \"Risk of Missile Attack Please Take Shelter\" along with the sound of sirens that typically accompany a bombardment. The screen then prompted viewers to \"take this warning seriously\" and depicted simulated explosions over various locations, before cautioning \"Israel is not safe, you will see.\"\r\n\r\nKan quickly dismissed the warnings as fake and the result of a hack. The following day, however, Israel\'s actual security forces warned of \"Palestinians in Gaza violently rioting along Israel\'s border,\" claiming some to be armed with incendiary devices and at least one with a grenade, while Gaza\'s Health Ministry argued Israeli forces were firing live ammunition at demonstrators, setting the stage for a potential new showdown between the two sides.', 'pic3.png', 'WORLD', 0),
(3, '05/28/21', 'John McAfee Is Running for President and Wants You to \'Wake the ', 'Twitter\'s Expert on Cryptocurrency and Whale Sex Is Running for President and Wants Americans to \'Wake the F*** Up\'', 'His middle fingers pointed toward the camera as he lay prone on a hospital bed and John McAfee swore vengeance on whoever allegedly tried to poison him. \"My enemies maged [sic] to spike something that i ingested,\" he wrote in a June 2018 tweet, soon following up with pictures showing him lying in a hospital bed. \"However, I am more difficult to kill than anyone can possibly imagine.\"\r\n\r\nMcAfee, who reportedly earned $100 million by 1994 from selling shares in his eponymous computer security company, has since created a persona as an indulgent cryptocurrency analyst traveling the world.\r\n\r\nA 2016 documentary, Gringo: The Dangerous Life of John McAfee, details his life in Belize, featuring a former business owner who accused McAfee of rape. The film also features interviews that indicate the 73-year-old was involved in the 2012 murder of his neighbor, Gregory Faull, which prompted the programmer to flee the small Central American country on the Caribbean Sea. McAfee has repeatedly denied any involvement in the death, but In March a federal judge in Florida ordered McAfee to pay $25 million in a wrongful death suit brought by Faull\'s family.\r\nMcAfee, who has self-exiled to Exuma, an island in the Bahamas, claiming that the IRS has convened a grand jury against him for not paying eight years of taxes, now draws attention for his tweets. His feed consists heavily of cryptocurrency commentary, but he also intermittently castigates the U.S. government and offers absurdist, sometimes offensive, social commentary, like the time he tweeted about whether having sex with a whale is consensual. (He told Newsweek that he tweeted about having sex with a whale to prove that people will believe anything if they trust you?and tweeted that whale sex is definitely consensual.)\r\nMcAfee is also running for president. Sort of.\r\n\r\nHe doesn\'t want or expect to win. His hope, he told Newsweek, is to shift how Americans think and talk about political topics.\r\nHis platform is minimal, but it centers around a point that many Americans can probably agree with: that the government no longer serves us. He maintains that he doesn\'t follow politics but thinks the U.S. is burdened by a bloated government and lawmakers who focus on maintaining their power, not serving the populace. He says that elected officials spend far too much time campaigning to keep their jobs.\r\n\r\n\"We want someone going \'no I don\'t want to be it,\' and we\'re going \'if you don\'t do it, we\'re going to string you up,\'\" he told Newsweek, noting that he blames voters for ushering the wrong people into office. \"The problem is not the people in the government. The problem is us.\"\r\nMcAfee identifies grievances but doesn\'t offer solutions, and, when asked if he sees similarities between his gruff, callous messaging and that of the current president, maintains he\'s not political.\r\n\r\nHis answer to the governmental problems he sees feels distinctly similar to the film V for Vendetta; he wants people to \"wake the f*** up.\"\r\nWhat exactly are you trying to do? What are you trying to convey? Who are you trying to reach?\r\n\r\nI want to change every individual\'s attitude and understanding of government. Here\'s my position: that we are being lied to by the government from every single corner of the world. The CIA provides [info], which is deceptive, manipulative. The government provides information which is manipulative and deceptive. So if you ask me, for example, what my position is, on anything, how the f*** would I know? Because I don\'t have any information that is real. So what is the point? I say that first, we have to f***ing wake up and understand that we have a corrupt government, that we have a system of slavery, in effect. I mean we work for three to four to five months every year for the government for free, in terms of paying income taxes. Is that not slavery?\r\nWhile you\'re pointing out the flaws in our system, are you promoting some sort of alternative? How do you expand your reach to draw attention to what you\'re trying to advocate?\r\n\r\nI\'m not worried about my reach. If I can reach 10 people, that\'s a change. So what are my alternatives? I don\'t have any. I don\'t need any. If you understand human nature, sir. If everyone in America woke up and saw the truth, do you think we\'d have to have a plan? F*** no. If you\'re in a crowded theater, and a fire breaks out, yet the movie is so enthralling that most of the people don\'t notice it. What do you do? Do you sit down and make a plan?... You wake everybody up. When everybody sees there\'s a fire, do you need a f***ing plan? No. There\'s panic to the exits. You want to plan when you don\'t understand the reality of your now. Now how\'s that going to help?\r\n\r\nDo you feel your message is reaching the majority? Are you having some sort of impact? Do you care that you\'re only reaching certain people who might align with you ideologically?\r\nI have no ideology. Please, god, alright. That\'s the issue. Let me use a movie analogy one more time. I don\'t care if I reach 10 people. Those 10 people are going to wake up into a realistic world and go \"holy s**t.\" They\'re going to tell 10 people and the others are going to tell 10 people. If you\'re dying in a movie theater and I\'m the only one that sees there\'s a fire, maybe I was asleep during this enthralling movie, whatever? Do I have to wake up everybody? F*** no I wake up the guy next to me. \"Hey, hey, wake up look there\'s a fire, oh my god.\" Then he wakes up, and we wake up.\r\n\r\nThis is how the world works, my friend. I\'m 73. I know human interaction. And the dynamics of day to day life and the means by which we become dreamlike and ignore those things which are the greatest threat to us. It\'s called laziness. Wake one person. They\'ll wake one. They\'ll wake one. How about a million? I don\'t think it\'ll take too long.\r\n\r\nDo you have people in Exuma working for your campaign?\r\nWe have thousands working with the campaign, sir. I have campaign managers now in 17 countries. My American campaign manager is Rob Loggia. We have uncountable numbers here in America. We have probably maybe 30 people in Ireland, 100 people in Germany, and so on. You\'re going to ask me, eventually, what on Earth?because no one\'s ever done this?do I need German campaign managers for, because they cannot vote. Now think about it? What is the number one problem in terms of its relations with the rest of the world? We\'ve been the world\'s policeman for how long? 50 years, at least. 1975. If we don\'t like something, we go and smack people around?.\r\n\r\nI have traveled around the world. Everybody hates America. Do they show it? No. If you\'re a tourist, you\'re never going to see it. Why? If you\'re a tourist you are a source of income for that country. You\'re never going to see the truth. Well, I\'ve lived in these countries, and I\'ve seen the f***ing truth. We\'re hated universally. We interfere in affairs that we do not understand for our own benefit?.\r\n\r\nSo now. Why do I have managers in foreign countries? Because I have one program to run. And that is I want these country campaign managers to organize talks, which I will appear at, not me, because I can\'t leave this f***ing island, but my clones will appear at, wearing my clones mask. We have two different versions of that now, one is a pull over the head, one\'s just a paper mask, that I can actually speak through and see the audience...I\'m not interested in what I say. I\'m interested in what they say. Because I want to open up questions. I want to be leading. What do you think of this? What do you think of that? And we\'re going to take snippets of these things and include them in our campaign for the American audience because I want Americans to see the truth of themselves.\r\nDo you ever feel that you should scale [your Twitter posts] back? How carefully curated is this?\r\n\r\nI could care less if people don\'t like what I\'m saying. I\'m just being me. I\'m not going to change me to be untrue or rather false or restricted while I\'m trying to make you be unrestricted. That makes no sense. No, we should all be unrestricted. We should all give a shit nothing about what people think or say about us. We should give a shit about what\'s written about us. We give a shit about our impact on the world, if we do something, which is absolutely us. No. I could care less about that, sir. I\'m not creating a brand, I\'m not creating an image. I\'m a 73-year-old man who had the world. I\'ve seen a lot of shit that people have not seen. I see a world in America that makes me want to cry.\r\n\r\nWhat needs to happen in order for you to be able to come back to the U.S.?\r\nI don\'t have a clue. I haven\'t thought about it yet. I don\'t address problems until I\'m ready to actually do something. First of all, get a bunch of lawyers. Secondly, come back, I don\'t know.', 'pic2.png', 'U.S.', 0),
(4, '05/28/21', 'Bill Maher Tears Into Restrictive New Anti-Abortion Laws', 'Bill Maher Warns Red States of \'Womb Drain\' over New Anti-Abortion Laws in Alabama, Missouri', 'Comedian Bill Maher used the opening monologue of Friday\'s Real Time to talk about the spate of new, highly restrictive anti-abortion laws being passed in states like Georgia, Alabama, and Missouri. He warned these states that they may end up driving younger women away, resulting in a \"womb drain.\"\r\n\r\n\"This week was all about the long game for Republicans coming to fruition now,\" said Maher about the new pieces of legislation that seek to outlaw most abortions in affected states. \"Fetus: Endgame would be the movie we\'re seeing.\"\r\n\r\nDescribing what he saw as a contest between right-leaning states to see \"who could be more hardcore on abortion,\" Maher listed off various legislative attempts to restrict a woman\'s right to the procedure, starting with an actual example and then spinning out into satire.\r\n\"Georgia made it illegal after six weeks -- women don\'t even know they\'re pregnant sometimes at six weeks,\" noted Maher. \"Alabama made it illegal at conception. Mississippi is thinking about making it illegal when you swipe right on Tinder. Arkansas now says any woman not committing incest must start committing incest; if you can not afford an uncle, one will be provided for you.\"\r\nHe specifically mocked Alabama\'s law for not allowing an exception for abortions in cases of rape and incest, asking, \"How else are you supposed to get pregnant in Alabama?\"\r\nWhile Maher made no effort to hide where he comes down on this issue, he also took time to mock liberals for what he viewed as ineffectual hashtag activism in response to these new laws.\r\n\r\n\"They have a hashtag now, #boycottAlabama, which is great if you\'re a purchaser of fried green tomatoes or meth,\" he opined. \"Today I Googled companies based in Alabama and the largest one was Vulcan Materials, the largest producer of crushed stone. That\'s right, this is their high-tech sector: breaking rocks into smaller rocks.\"\r\nMaher then warned anti-abortion activists in what he dubbed the \"Don\'t break a condom here\" states that they should be careful what they wish for.\r\n\r\n\"There\'s a lot of young women in these states ? would you stay there, in Alabama or any of these states that are doing this?\" he asked his audience. \"You\'ve heard of the \'brain drain\'? There could be a \'womb drain.\'... \'Come out to California, ladies! The weather is sunny and it\'s 2019 here. Don\'t worry about abortion in California, you can get it done at the dry cleaners.\'\"\r\n\r\nYou can watch the whole monologue in the video above.', 'pic1.png', 'U.S.', 0),
(5, '05/28/21', 'Macron, Merkel Urge Improved Ties With China As Belt and Road Lo', 'Macron, Merkel Urge Improved Ties With China As Belt and Road Looks More Likely Than Ever', 'French President Emmanuel Macron and German Chancellor Angela Merkel have called for improved trading ties with China as they voice cautious optimism about the Continent becoming more involved in Chinese President Xi Jinping\'s Belt and Road Initiative (BRI).\r\n\r\n\"We, as Europeans, want to play an active part [in the project],\" Merkel said after Tuesday talks in Paris with Xi, Macron and European Commission President Jean-Claude Juncker, the Hong Kong-based South China Morning Post reported. \"And that must lead to a certain reciprocity, and we are still wrangling over that a bit.\"\r\n\r\nMacron voiced a similar view, while remaining cautious. \"What\'s at stake is demonstrating that cooperation yields more than confrontation,\" the French leader said, according to Reuters, a clear contrast to the current position of Europe\'s close ally the United States.\r\nWashington has dubbed the BRI a \"vanity project,\" as President Donald Trump has generally taken a hard-line stance against Beijing. Last summer, Trump launched a multibillion-dollar trade war with China, accusing it of treating the U.S. \"very unfairly\" when it comes to trade.\r\n\r\nAs the trade dispute continues, the administration has maintained a firm stance against China\'s efforts to move forward with the BRI, which is modeled after the historic Silk Road trade route and aims to link China by land and sea with other parts of Asia, Europe, the Middle East and Africa through vast infrastructure development.\r\n\"China\'s BRI offers both opportunities and risks, and the prudent thing to do, which European countries are moving toward, is to explore its opportunities while being cautious of its risks,\" Yuen Yuen Ang, an associate professor of political science at the University of Michigan specializing in China, told Newsweek.\r\nConversely, she pointed out, \"the U.S. slams the door on BRI because it sees its relationship with China in zero-sum terms.\" Washington thinks \"if China \'wins,\' the U.S. \'loses,\'\" she said.\r\n\r\nAnalysts have raised significant concerns about what some have classified as \"predatory\" lending practices by Beijing in an effort to expand the BRI and its global influence. Throughout Asia and Africa, China has offered long-term loans that some nations are unlikely to pay back. The goal, according to analysts, is for governments to eventually default on the loans and give China control of the infrastructure built with the funds.\r\nEuropean nations are also concerned about what they view as unfair trade practices by China that make it difficult for foreign enterprises to compete fairly. While European leaders believe they have opened their markets wide to Chinese companies, they see China as having been slow to respond in kind.\r\n\r\nAng told Newsweek that China\'s government will likely take these concerns more seriously moving forward.\r\n\r\n\"China has recently fast-tracked a draft Foreign Investment Law. While falling short of some expectations, it signals the Chinese government\'s eagerness to respond to foreign investors\' concerns,\" she explained. Ang also pointed out that ongoing tensions between Beijing and Washington may encourage improved ties between China and Europe.\r\n\"Europe offers a critical alternative source of engagement and commerce for China, so European governments are now in a particularly advantageous position to negotiate for market access,\" she said.\r\n\r\nItaly just became the European Union\'s first member to sign on to the BRI, with the country\'s prime minister inking a memorandum of understanding with China on Saturday in regards to the project. France, Germany and the European Commission have been more cautious, appearing concerned that Italy moved ahead too quickly, as it became the first member of the world\'s elite G7 group of wealthy and developed economies to do so.\r\n\r\nBut Xi attempted to reassure the European leaders on Tuesday. \"Cooperation is greater than competition,\" he said, according to Reuters. \"We shouldn\'t be always worried about watching our back with suspicion while moving forward.\"', 'pic6.png', 'WORLD', 0),
(6, '05/28/21', 'TSA Screened Millions Over Christmas Week Despite CDC COVID Trav', 'TSA Screened Millions Over Christmas Week Despite CDC COVID Travel Warning', 'The Transport Security Administration (TSA) screened almost 1.3 million passengers on Sunday?the highest number of flyers checked in a single day since March, new data has revealed.\r\n\r\nTSA checkpoint figures show that the agency screened 1.28 million passengers yesterday, and a little more than 1.1 million on Saturday. The last time the agency screened more than 1.2 million passengers in a single day was March 16, when 1.25 million flyers passed through its checkpoints.\r\n\r\nOver the whole of last week, more than seven million passengers passed through TSA checkpoints, despite the Centers for Disease Control and Prevention (CDC) warning Americans to postpone their festive travel plans.\r\n\r\n\"Travel may increase your chance of spreading and getting COVID-19,\" the CDC said in a notice earlier this month. \"CDC continues to recommend postponing travel and staying home, as this is the best way to protect yourself and others this year.\"\r\n\r\nThe public health body also advised Americans to consider whether the people they would be visiting were at an \"increased risk\" of getting very sick from the virus, and whether cases in the area were already high.\r\n\r\nNewsweek has contacted the TSA for comment and will update this article with any response.\r\n\r\nThe latest data passenger screening data was released as COVID-19 hospitalizations continued to mount over the festive period, with more than 118,000 people battling the virus on American wards Sunday.\r\n\r\nThe COVID Tracking Project run by The Atlantic recorded that 118,720 people were in American hospitals yesterday as a result of having COVID-19, bringing the 7-day average to 118,248 hospitalizations.', 'pic7.png', 'U.S.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `surname` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `clearance` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `username`, `password`, `clearance`) VALUES
(1, 'Admin', 'Admin', 'Admin', '$2y$10$D/JxFVLeLXUYGnw4clitYO3NEKSUM.MKx1cJSaKD/dxiXud8Qzwum', 1),
(2, 'user', 'user', 'user', '$2y$10$4vC4.FI2EAcb3zbd9P39BOtybXe4FgZbtn9YtMw0YZcnpxggAkPVy', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;