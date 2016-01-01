def prompt(*args)
  print(*args)
  gets.chomp
end

def adjust(input)
  case input
    when 'sou'
      book = 'gen'
    when 'shu'
      book = 'exo'
    when 'reb'
      book = 'lev'
    when 'min'
      book = 'num'
    when 'sin'
      book = 'deu'
    when 'yos'
      book = 'jos'
    when 'sis'
      book = 'jud'
    when 'rut'
      book = 'rut'
    when 'sa1','1sa'
      book = '1sa'
    when 'sa2'
      book = '2sa'

    when 're1','1re'
      selection = prompt '列王記1? 歴代誌1? (0,1)'

      if selection.to_i == 0
        book = '1ki'
      else
        book = '1ch'
      end

    when 're2','2re'
      selection = prompt '列王記2? 歴代誌2? (0,1)'

      if selection.to_i == 0
      book = '2ki'
      else
        book = '2ch'
      end

    when 'ret2','2ret'
      book = '2ki'
    when 'ezu'
      book = 'ezr'
    when 'neh'
      book = 'neh'
    when 'esu'
      book = 'est'
    when 'yob'
      book = 'job'


    when 'shihen','sihen','sin'
      book = 'psa'
    when 'shingen','singen','sih'
      book = 'pro'

    when 'shi'
      selection = prompt '1:申命記 2:士師記 3:詩篇 4:箴言 5:使徒行伝)'
      case selection.to_i
        when 1
          book = 'deu'
        when 2
          book = 'jud'

        when 3
          book = 'psa'

        when 4
          book = 'pro'

        when 5
          book = 'act'
        else
          puts '選択肢の中から選んでください'
      end

    when 'den'
      book = 'ecc'
    when 'gak'
      book = 'son'
    when 'iza'
      book = 'isa'
    when 'ere'
      book = 'jer'
    when 'aik'
      book = 'lam'
    when 'eze'
      book = 'eze'
    when 'dan'
      book = 'dan'
    when 'hos'
      book = 'hos'
    when 'yoe'
      book = 'joe'
    when 'amo'
      book = 'amo'
    when 'oba'
      book = 'oba'
    when 'yon'
      book = 'jon'
    when 'mik','mic'
      book = 'mic'
    when 'nah'
      book = 'nah'
    when 'zep'
      book = 'zep'

    when 'mal','maraki','malaki','malachi'
      book = 'mal'

    when 'mar'
      selection = prompt 'マラキ? マルコ? (0,1)'
      if selection.to_i == 0
      book = 'mal'
      else
        book = 'mar'
      end

    when 'mat'
      book = 'mat'
    when 'maruko', 'mark'
      book = 'mar'


    when 'ruk','luk'
      book = 'luk'
    when 'yoh'
      book = 'joh'
    when 'shitogyouden','sitogyouden','sit'
      book = 'act'
    when 'ro-'
      book = 'rom'
    when 'ko1','co1'
      book = '1co'
    when 'ko2','co2'
      book = '2co'
    when 'gar'
      book = 'gal'
    when 'epe'
      book = 'eph'
    when 'piri'
      book = 'phi'
    when 'cor'
      book = 'col'
    when 'tesaronike1'
      book = '1th'
    when 'tesaronike2'
      book = '2th'
    when 'temote1'
      book = '1ti'
    when 'temote2'
      book = '2ti'

    when 'tet'
      book = 'tit'

    when 'te1','1te'
      selection = prompt 'テサロニケ１? テモテ１? (0,1)'
      if selection.to_i == 0
      book = '1th'
      else
        book = '1ti'
      end

    when 'te2','2te'
      selection = prompt 'テサロニケ2? テモテ2? (0,1)'
      if selection.to_i == 0
      book = '2th'
      else
        book = '2ti'
      end

    when 'pire'
      book = 'phm'

    #phili philemon
    when 'pir'
      selection = prompt 'ピリピ? ピレモン? (0,1)'
      if selection.to_i == 0
      book = 'phi'
      else
        book = 'phm'
      end


    when 'heb'
      book = 'heb'
    when 'yak','yac'
      book = 'jam'
    when 'pe1'
      book = '1pe'
    when 'pe2'
      book = '2pe'
    when 'yo1'
      book = '1jo'
    when 'yo2'
      book = '2jo'
    when 'yo3'
      book = '3jo'
    when 'yud'
      book = 'jud'
    when 'mok',
        book = 'rev'
    else
      book = input
  end

  return book

end




def translate(book)
  case book
    when 'gen'
      book = '創世記'
    when 'exo'
      book = '出エジプト記'
    when 'lev'
      book = 'レビ記'
    when 'num'
      book = '民数記'
    when 'deu'
      book = '申命記'
    when 'jos'
      book = 'ヨシュア記'
    when 'jud'
      book = '士師記'
    when 'rut'
      book = 'ルツ記'
    when '1sa'
      book = 'サムエル記 第一 '
    when '2sa'
      book = 'サムエル記 第二'
    when '1ki'
      book = '列王記 第一'
    when '2ki'
      book = '列王記 第二'
    when '1ch'
      book = '歴代誌 第一'
    when '2ch'
      book = '歴代誌 第二'
    when 'ezr'
      book = 'エズラ記'
    when 'neh'
      book = 'ネヘミヤ記'
    when 'est'
      book = 'エステル記'
    when 'job'
      book = 'ヨブ記'
    when 'psa'
      book = '詩篇'
    when 'pro'
      book = '箴言'
    when 'ecc'
      book = '伝道者の書'
    when 'son'
      book = '雅歌'
    when 'isa'
      book = 'イザヤ書'
    when 'jer'
      book = 'エレミヤ書'
    when 'lam'
      book = '哀歌'
    when 'eze'
      book = 'エゼキエル書'
    when 'dan'
      book = 'ダニエル書'
    when 'hos'
      book = 'ホセア書'
    when 'joe'
      book = 'ヨエル書'
    when 'amo'
      book = 'アモス書'
    when 'oba'
      book = 'オバデヤ書'
    when 'jon'
      book = 'ヨナ書'
    when 'mic'
      book = 'ミカ書'
    when 'nah'
      book = 'ナホム書'
    when 'hab'
      book = 'ハバクク書'
    when 'zep'
      book = 'ゼパニヤ書'
    when 'hag'
      book = 'ハガイ書'
    when 'zec'
      book = 'ゼカリヤ書'
    when 'mal'
      book = 'マラキ書'
    when 'mat'
      book = 'マタイの福音書'
    when 'mar'
      book = 'マルコの福音書'
    when 'luk'
      book = 'ルカの福音書'
    when 'joh'
      book = 'ヨハネの福音書'
    when 'act'
      book = '使徒の働き'
    when 'rom'
      book = 'ローマ人への手紙'
    when '1co'
      book = 'コリント人への手紙 第一'
    when '2co'
      book = 'コリント人への手紙 第二'
    when 'gal'
      book = 'ガラテヤ人への手紙'
    when 'eph'
      book = 'エペソ人への手紙'
    when 'phi'
      book = 'ピリピ人への手紙'
    when 'col'
      book = 'コロサイ人への手紙'
    when '1th'
      book = 'テサロニケ人への手紙 第一'
    when '2th'
      book = 'テサロニケ人への手紙 第二'
    when '1ti'
      book = 'テモテへの手紙 第一'
    when '2ti'
      book = 'テモテへの手紙 第二'
    when 'tit'
      book = 'テトスへの手紙 '
    when 'phi'
      book = 'ピレモンへの手紙'
    when 'heb'
      book = 'ヘブル人への手紙'
    when 'jam'
      book = 'ヤコブの手紙'
    when '1pe'
      book = 'ペテロの手紙 第一'
    when '2pe'
      book = 'ペテロの手紙 第二'
    when '1jo'
      book = 'ヨハネの手紙 第一'
    when '2jo'
      book = 'ヨハネの手紙 第二'
    when '3jo'
      book = 'ヨハネの手紙 第三'
    when 'jud'
      book = 'ユダの手紙'
    when 'rev'
      book = 'ヨハネの黙示録'

  end
  return book

end