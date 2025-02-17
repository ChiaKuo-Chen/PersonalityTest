//
//  AnimalData.swift
//  PersonalityTest
//

import SwiftUI

// MARK: - ENDPOINT DATA

var AnimalData : [Animal] = [
    
    Animal(title: "貓頭鷹", overview: "務實的守望者", name: "owl", rarity: 3.98, description: """
安靜，認真，務實。對新事物會有些抗拒，也不喜歡驚喜，但在平日是最有效率也最值得信賴的。
""",friend: [ MbtiToIndex.ESFP.rawValue, MbtiToIndex.ESTP.rawValue ]),
    // ISTJ // ESFP ESTP
    Animal(title: "鹿", overview: "優雅的代表", name: "deer", rarity: 9.58, description: """
優雅，聰明，害羞往往是他們的特質。有著不可思議的第六感，能夠在危機來到前躲避。
""",friend: [ MbtiToIndex.ESFP.rawValue, MbtiToIndex.ESTP.rawValue ]),
    // ISFJ // ESFP ESTP
    Animal(title: "鯨魚", overview: "智慧的象徵", name: "whale", rarity: 6.29, description: """
海量的慈悲與關懷，有著寬廣的內心與些許的悲傷，他們習慣將自己隱藏在很深的地方。
""",friend: [ MbtiToIndex.ENFP.rawValue, MbtiToIndex.ENTP.rawValue ]),
    // INFJ // ENFP ENTP
    Animal(title: "龍", overview: "離群的智者", name: "dragon", rarity: 2.87, description: """
傑出，學識淵博但難以捉模，對於謎語或難題難以抗拒，喜歡待在自己的世界裡獨自享受。
""",friend: [ MbtiToIndex.ENFP.rawValue, MbtiToIndex.ENTP.rawValue ]),
    // INTJ // ENFP ENTP
    
    
    Animal(title: "豹", overview: "隱密的狙擊手", name: "leopard", rarity: 2.62, description: """
有著出色的觀察力跟傑出的行動能力，習慣獨自行動，很少人能夠接近他們。
""",friend: [ MbtiToIndex.ESFJ.rawValue, MbtiToIndex.ESTJ.rawValue ]),
    // ISTP // ESFJ ESTJ
    Animal(title: "長頸鹿", overview: "獨特的觀察者", name: "giraffe", rarity: 7.81, description: """
第一眼有點古怪，但有著難以置信的優雅，美麗與敏感的心思，他們往往能夠看到大眾無法看到的。
""",friend: [ MbtiToIndex.ENFJ.rawValue, MbtiToIndex.ESFJ.rawValue, MbtiToIndex.ESTJ.rawValue ]),
    // ISFP // ENFJ ESFJ ESTJ
    Animal(title: "雪豹", overview: "抽象的先知", name: "snowLeopard", rarity: 14.23, description: """
給人神秘而優雅的印象，對環境很敏感，喜歡生活在清淨的地方，隱密的天才。
""",friend: [ MbtiToIndex.ENFJ.rawValue, MbtiToIndex.ENTJ.rawValue ]),
    // INFP // ENFJ ENTJ
    Animal(title: "貓", overview: "熱情的探索者", name: "cat", rarity: 5.57, description: """
很聰明，而且對有興趣的事物有著無窮的好奇心，對他們來說，規則與限制是用來挑戰的。
""",friend: [ MbtiToIndex.ENTJ.rawValue, MbtiToIndex.ESTJ.rawValue ]),
    // INTP // ENTJ ESTJ
    
    Animal(title: "熊", overview: "魅力的具現化", name: "bear", rarity: 2.36, description: """
好鬥、敢於冒險、強悍，有著擋不住的魅力，看起來非常的和善，但仍有著致命的戰鬥力。
""",friend: [ MbtiToIndex.ISFJ.rawValue, MbtiToIndex.ISTJ.rawValue ]),
    // ESTP // ISFJ ISTJ
    Animal(title: "猴子", overview: "生活的體驗者", name: "monkey", rarity: 6.70, description: """
外向而活潑，團隊中的開心果，富有創造力，，他們總是能活在當下。
""",friend: [ MbtiToIndex.ISFJ.rawValue, MbtiToIndex.ISTJ.rawValue ]),
    // ESFP // ISFJ ISTJ
    Animal(title: "獨角獸", overview: "夢幻的存在", name: "unicorn", rarity: 12.56, description: """
稀有而美麗的存在，有著不可思議的兩面性，一方面聰明、忠誠而熱情，另一方面開朗且積極。
""",friend: [ MbtiToIndex.INFJ.rawValue, MbtiToIndex.INTJ.rawValue ]),
    // ENFP // INFJ INTJ
    Animal(title: "鸚鵡", overview: "華麗的明星", name: "parrot", rarity: 4.32, description: """
善於言語，思緒敏捷而機智，也擅長跳躍性的思考，很樂於展現自己的觀點與才華。
""",friend: [ MbtiToIndex.INFJ.rawValue, MbtiToIndex.INTJ.rawValue ]),
    // ENTP // INFJ INTJ
    
    Animal(title: "鱷魚", overview: "力量的實現", name: "crocodile", rarity: 3.81, description: """
非常地務實，有著果斷的行動能力，著重程序，但往往也能取得好的成果。
""",friend: [ MbtiToIndex.INTP.rawValue, MbtiToIndex.ISFP.rawValue, MbtiToIndex.ISTP.rawValue ]),
    // ESTJ // INTP ISFP ISTP
    Animal(title: "燕子", overview: "春天的化身", name: "swallow", rarity: 9.33, description: """
有著強大的社交能力與外向的性格，讓他們在社交上無往不利，真誠的笑容就是他們最強大的武器。
""",friend: [ MbtiToIndex.ISFP.rawValue, MbtiToIndex.ISTP.rawValue ]),
    // ESFJ // ISFP ISTP
    Animal(title: "狗", overview: "可靠的夥伴", name: "dog", rarity: 5.80, description: """
擅長發現與解讀隱藏起來的事情，偏好團隊合作，反應能力好，責任感強。
""",friend: [ MbtiToIndex.INFP.rawValue, MbtiToIndex.ISFP.rawValue ]),
    // ENFJ // INFP ISFP
    Animal(title: "獅子", overview: "王者", name: "lion", rarity: 2.14, description: """
不只是強大，而且有遠見、有組織能力，總是在為了勝利進行戰鬥。
""",friend: [ MbtiToIndex.INFP.rawValue, MbtiToIndex.INTP.rawValue ]),
    // ENTJ // INFP INTP
]

