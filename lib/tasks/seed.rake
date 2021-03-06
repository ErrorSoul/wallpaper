# -*- coding: utf-8 -*-
namespace :db do
  desc "Fill database with type of wp"
  task populate: :environment do
    
    #make_types
    #make_areas
    #make_paints
    #fill_base
    make_clues
    #make_admin 
    
  end
end
T = %{<p>Текстильный материал отличается красотой и дороговизной. Такое покрытие для стен не оставит равнодушным ни Вас ни Ваших гостей, ведь смотрятся они просто великолепно. 
<p>Текстильные обои бывают нескольких типов: цельные и нанесенные на бумажную или другую основу.</p> Существуют также безшовные покрытия (до трех метров в ширину), которые при поклейке образуют один вертикальный шов. </p>

<p>Достоинства текстильных обоев:</p>
<p>Бесшовные покрытия, изготавливаемые из тканей плотной консистенции, в рулонах по 3 метра в ширину. Вся комната обклеивается ими в безшовных соединениях и стыков.</p>
<p>Декоративное оформление стен. Такие обои смотрятся изысканно и необычно.</p>
<p>Функция тепловой и звуковой изоляции.
Экологичность.</p>
<p>Натуральные несинтетические материалы обладают антисептическими свойствами.</p>
<p>Материалы, из которых изготовляются текстильные обои
сочетают вискозу и шелк. Из таких материалов созданы дорогие (за счет использования натурального шелка) шикарные полотна для стен. Изготавливаются на заказ.</p>
<p>Индийский джут (он также идет на производство прочных тканей и веревок). Данные обои отлично замаскируют существующие неровности и иные недостатки поверхности стены. Они не выгорают на солнце и легко чистятся от загрязнений.</p>
<p>Приятный на ощупь натуральный лен. Имеет элегантное визуальное исполнение.</p>
<p>Велюровые. Полотна из этого материала капризны в эксплуатации и сложны в изготовлении. Однако для комнаты с небольшой проходимостью и низкой загрязненностью они подойдут.</p>
<p>Фетровые. Легко переносит уборку влажного типа. Чаще всего такие обои можно встретить в продаже в виде погонных метров, а не рулонов.</p>

} 

V= %{<p>Виниловые обои считаются настенным покрытием, которое состоит из бумаги или флизелина и поливинилхлорида. Конкретно этот материал и делает виниловые обои стабильными к автоматическим дефектам и влаге.</p>
<p> Прогрессивные технологии свидетельствуют,что устройство виниловых обоев обеспечивают влагообмен с окружающей средой. Данное вероятно благодаря микропорам. Через их из-под покрытия испаряется конденсат, хотя при мытье микропоры не пропускают воду под обои.</p> <p>Этот материал отделки отличается собственной стабильностью, долговечностью и разнородным дизайном. Хотя совместно с данным, виниловые обои и стоят подороже простых. Хотя на их известность данный факт не оказывает большое влияние.</p> <p>Относительно расцветки, то его выбор находится в зависимости от объемов здания и его назначения. Цветовая палитра виниловых обоев разрешает выбрать требуемые цвета для любого точного варианта.</p> }
            
F=%{
  <p>Флизелиновые обои есть 2-ух типов: фактически флизелиновые, т.е. состоящие всецело из флизелина, и обои на флизелиновой базе с виниловым покрытием.</p>
<p>Флизелин – нетканый который был использован на базе целлюлозных волокон, скрепленных полимером.</p>
<p>Флизелин в том числе и именуют «усовершенствованной бумагой», т.к. он прочнее, наиболее устойчивый к стиранию, владеет большей огнестойкостью, нежели бумага.</p>
<p>Наконец, флизелиновые обои – в первую очередь обои под покраску. Они имеют фактурную плоскость, изображающую украшенную штукатурку либо повторяющею какой-нибудь узор. Их возможно перекрашивать пару раз, при всем этом живо и совсем недорого обновляя и видоизменяя собственный интерьер. Краски лучше всего подбирать на аква базе: акриловую либо водно-дисперсионную.</p> 
<p>Обои на флизелиновой базе – тут флизелин употребляется в виде подложки, он совершенно гладкий и похож на крепкую бумагу. На данную базу наклеен украшающий слой из винила – он значит и характеризует декор обоев, наиболее часто данный слой - фактурный, с некоторым рисунком.</p>
}  

S=%{
<p>Стеклообои – украшающее полотно, состоящее из кварцевых нитей. Данные обои уже давным-давно и очень часто используются на Западе, хотя в ближнем зарубежья не имеют грандиозного распространения, т.к. не многие понимают об их характеристиках и знают об их существовании.</p>

<p>Стеклообои бывают как гладкими, так и рельефными. При помощи игры текстур с переплетением нитей изготовители делают разные фактуры: ромбы, елочки и другие любые узоры.</p>

<p>Кварц считается крепким естественным материалом – данная характеристика означает то, что собственно они всецело экологичны и безвредны. Благодаря свойствам кварца, характерная черта стеклообоев – высочайшая стабильность. И еще их можнож нередко перекрашивать, при всем этом они не растеряют рельеф. Эти обои превосходно подходят для отделки стенок кухни и ванной комнаты, потому что с них легко убираются засорения, они приспособлены к разным химическим средствам для очищения, водостойкие и выдерживают повышенную температуру.</p> 

<p>Стеклообои паропроницаемы, потому что стена обработана таким видом обоев превосходно вентилируется. Хотя если Вы решите поменять стеклообои - то столкнетесь с одним немаловажным моментом - их сложно демонтировать.</p> 
<p>В виде плоскости для стеклообоев подходит: дерево, гипсокартон, ДВП, сплав, бетон и кирпич. Перед началом оклейки стен обоями нужно кропотливо очистить поверхность от грязи и пыли.</p>

<p>Производятся данные обои из только лишь из экологических материалов: сода, кварцевый песок, доломит. Помимо прочего данные материалы не вызывают аллергических реакций, собственно что считается плюсом для жителей нашей планеты с завышенной чувствительностью.</p>
<p>Стеклохолст – альтернативная кандидатура стеклообоям и они имеют меньшую стоимость. Обои почти одинаковые,а различие состоит только в том, что, собственно волокна наклеены случайным порядком, а не переплетены.</p>
}

B= %{
Бумажные обои считаются наиболее экологическим настенным покрытием, которое даст возможность осуществлять всевозможные, в том числе и самые неустрашимые дизайнерские решения. Использование этого вида обоев вполне вероятно почти что в каждой комнате, включая и детскую. К бессчетным плюсам бумажных обоев стоит отнести и широкий ценовой спектр, в связи с чем высококачественная отделка стен не разорит Ваш бумажник. Бумажные обои наиболее экологические и дружелюбны к окружающей среде, но вместе с тем наименее долговечны. 
}           
K= %{

<p> Наиболее распространенный вид обоев под покраску - это флизелиновые обои. Их рекомендуют ведущие дизайнеры и для офисов и госучереждений и для домов и квартир.</p><p> Флизелиновые обои под покраску - это оптимальный вариант для творческих и вечно ищущих стиль своего дома натур. Обои под покраску успешно переживают мытье, повторную покраску и разного рода механические воздействия и помехи. И теперь не нужно тратить баснословные деньги на выравнивание стен перед оклейкой и последующей покраской - просто начинайте клеить обои под покраску и обрабатывайте дальше, флизелин выровняет стены и добавит толщины и текстуры, скрывая тем самым все дефекты. Ведь сейчас на рынке обоев под покраску представлены не только белые листы, а рельефные рисунки, сложные текстуры и даже флизелин с эффектом 3D.<p> Обои под покраску - универсальное решение многих проблем одним ответным нанесение на стены. </p>
}

KIT= %{<p>Кухня - одно из самых главных помещений в любой квартире. На кухне происходит все таинство домашнего очага: готовка пищи, ее принятие, приятные посиделки с друзьями и близкими и иногда даже самые судьбоносные признания и предложения. </p>
<p>Особенностью кухонного интерьера выступают ее функциональные элементы: плита, холодильник, стол. Но не стоит забывать о том, какого цвета будет само помещение. Ведь цвет так или иначе влияет на Ваше настроение и чувства. Магия цвета превратна: холодные цвета способны успокаивать, а теплые - наоборот возбуждать. Поэтому выбирая обои для отделки кухни следует учитывать этот фактор. Лучше всего если рабочая сторона, так называемый "кухонный рукав", будет выполнен из долгосрочных и практичных материалов. Для этого подойдет керамическая плитка. А вот отделочные работы остальной части могут быть выполнены подходящими обоями. Прежде всего, это должны быть влагостойкие и прочные обои, ведь где если не на кухне мы соблюдаем строгий контроль чистоты. Также обои на кухню должны соответствовать нормативам светостойкости и термическим показателям. Они не должны желтеть и портиться после Ваших кулинарных этюдов. Паростойкость тоже одна из главных критериев по которым следует ориентироваться. Обои на кухне должны хорошо просыхать и не допускать размножению пагубной плесени под ними.</p><p>Подбирая обои на кухню. Внимательно исследуйте маркировку и символы на товаре: значок с волнами свидетельствует о стойкости к влаге, а значок со щеткой - указывает на стойкость к механическим повреждениям.</p><p>Лучше всего для кухни подойдут флизелиновые или виниловые обои, а меньше всего следует обращать внимание на бумажные и акриловые. </p><p>Для создания классического домашнего интерьера на кухне можно предпочесть обои вертикального узора и светлых оттенков - они расширяют и вытягивают помещение, а при вечернем освещении дарят невидимое сияние и уют.</p>}

GOS=%{<p>Гостиная - одна из самых важных помещений в квартире, по которой судят ее хозяев. Гостиная - это та часть квартиры, где Вы проводите наибольшее количество своего времени с гостями и близкими. В гостиной устраивают праздники и простые посиделки, поэтому то как оформлена гостиная, будет отвечать тому, с какими настроениям останутся Ваши гости и как будут проходить праздники. Гостиная - это многофункциональная комната и она должна быть оформлена в лучших традициях сочетания стиля и вкуса. И тут обои играют решающую роль, поскольку позволяют сделать гостиную либо праздничной и привлекательной или сдержанной и нейтральной. </p><p>Если перед Вами стоит задача сгладить мелкие дефекты стен или неровности/несовершенности в иных деталях гостиной - лучше выбрать обои насыщенных густых цветов, с крупным рисунком. Если же Ваша гостиная должна подталкивать к активности и движению - лучшим выбором будет оформить ее в светлых, пастельных тонах. </p><p> Определенных правил и законов в оформлении гостиной нет: все дело заключается в Вашем интуитивном чувстве стиля и вкуса. Но, все же не стоит оформлять гостиную в черных или белых тонах. Такие контрастные цвета действуют опустошающие на психику человека и подавляют общее настроение. Для придания оригинальности можно поработать с фотообоями и соорудить художественное панно на центральной стене. </p>}
SP = %{<p>Спальня - самая интимная комната в нашем доме. В спальне мы начинаем и заканчиваем свой день, в спальне хранятся наши самые сокровенные секреты и только в ней мы можем полностью расслабиться, отдаться чувствам и настроениям. Спальня охраняет наши эмоции и дает чувство безопасности. Поэтому начиная ремонт спальни мы обязаны продумать тонкости ее интерьера, учитывая даже самые маленькие детали. </p><p>Выбор обоев для спальни должен учитывать как эстетическую составляющую, так и практический мотив. Обои для спальни играют огромную роль и влияют на наше настроение косвенным образом. Узоры, цвет и полутона должны тщательно продумываться перед выбором обоев. </p><p>Полагаясь на собственный вкус Вы можете сделать свою спальню как светлой и воздушной, так и загадочной и насыщенной. </p><p>По типу обоев лучше ориентироваться на флизелиновые или текстильные. Бумажные обои в данном случае недолговечны и малоэстетичны для такого интимного места. А флизелиновые отлично подойдут для творческих натур, склонных перекрашивать стены по первому зову своего сердца. Текстиль - придает шарм и текстурного рельефа спальне, добавляет дороговизны и вместе с тем тепла и уюта. Лучший совет для выбора обоев в спальню: лучше меньше да лучше. Основная часть стен - флизелин, дизайнерская отделка - текстиль. Такое оригинальное решение сэкономит средства, но и надолго позволит наслаждаться уютом и прекрасным настроением Вашей комнаты. </p>}
PRI = %{<p>Коридор - пожалуй самое знаковое место в доме. В коридоре мы встречаем гостей и именно он создает общее мнение о нашем доме. Подбирая обои для коридора следует не забывать о том, что чрезмерная вычурность губит пространство и задает дурной тон. Ведь коридор - это самая маленькая часть квартир и домов в соотношении всего пространства. 
</p><p>Наполняя коридор красками мы задаем настроение и оставляем хорошее впечатление о вкусе его хозяев, что в свою очередь укрепляет отношение гостей и принимающей стороны.</p>
<p>Выбирая обои для коридора мы должны обращать внимание на характеристики противостояния к пыли, грязи и влаге. В коридоре часто происходят самые нелицеприятные вещи: снимается мокрая обувь, отряхивается собака после прогулки и т.д. С такой интенсивной нагрузкой может справиться не вся продукция. Также обои для коридора должны хорошо мыться и не быть слишком светлыми, иначе будут оставаться разводы. </p><p>Благодаря правильно подобранному рисунку можно исправить даже самую мрачную ситуацию. Светлые обои с мельчайшим рисунком выгодно увеличивают пространство и зрительно предают объема помещению, а пастельные и персиковые тона отображают свет и преображают прихожую в мягкое и объемное помещение. 
</p>}
DET = %{<p>Детская комната - это помещение глубокой ответственности родителей. От выбора цвета и типа обоев зависит и здоровье и самочувствие Вашего ребенка. Но все привыкли, что светлые и нейтральные цвета - это лучшая альтернатива для отделки детской комнаты, а подросшие дети уже сами выбирают яркие и динамичные обои из тематическим сюжетом мультфильмов или историй. Но стоит ли обрекать себя и своих отпрысков на извечные метаморфозы с ремонтом? Ведь такие мотивы быстро приедаются, да и вкусы у детей меняются с ураганной скоростью. </p><p>Попробуйте приучить свое чадо к хорошему вкусу и стилю уже с детства и выберите роскошные обои с классическим викторианским рисунком. Ведь сложные фигуры развивают воображения и побуждают к искусству, а мягкие тона успокаивают, но не надоедают как сюжетное полотно. </p>}

TYPE_TEXT = [V, F, T, S, B, K] 

AREA_TEXT =  [KIT,GOS, SP, PRI, DET, nil]          
def hel 
  ActionController::Base.helpers
end

def make_admin
  AdminUser.create!(email: "admin@example.com",
                    password: "password")
end



def make_clues 
  c = ["виниловый", "флизелиновый", "для стеклообоев"]
  country = Country.all.map(&:id)
  c.each do |name|
    ClueType.create!(name: name)
  end

  ClueType.all.each do |x| 
    8.times do |z|
      x.clues.create!(title: Faker::Address.state,
                   country_id: country.sample,
                   description: Faker::Lorem.sentence(3),
                   vendor: Faker::Address.state,
                   consumption: "0.5/1 kg",
                   weight: 0.8,
                   price: Faker::Commerce.price,
                   marking: Faker::Code.isbn,
                   asset: File.open(File.join("app", ActionController::Base.helpers.asset_path("assets/images/blog/#{(z+1)%3}.jpg")))
                   
                   )

    end
  end
end

def make_types
  types = %w(виниловые флизелиновые текстильные стеклообои бумажные)
  types << "под покраску"
  types.each_with_index do |t, ind|
    Type.create!(name: t, text: TYPE_TEXT[ind])
  end


  def make_countries
    %w(Россия Франция Италия Германия Бельгия)
  end

  def make_paints
   paints =  %w(детский геометрический 
               классический однотонный   
              растительный  другой)
    paints.each do |x| 
      Paint.create!(name: x)
    end
  end


  def make_areas
    areas = %w(кухня гостиная спальня
               прихожая детская другое)
    areas.each_with_index do |x, ind|
      Area.create!(name: x, text: AREA_TEXT[ind])
    end
  end
      

  def make_labels
    t = Array.new
    5.times do 
      t << Faker::Company.name
    end
    t
  end

  def make_collections
    t = Array.new
    5.times do 
      t << Faker::Company.name
    end
    t
  end

def make_wallpapers(x)
  t = Type.all.map(&:id)
  p = Paint.all.map(&:id)
  a = Area.all.map(&:id)
  6.times do |w|
    x.products.create!(title: Faker::Address.state,
                       type_id: t.sample,
                       paint_id: p.sample,
                       area_id: a.sample,
                       description: Faker::Lorem.sentence(3),
                       height: 0.54,
                       weight: 1,
                       price: Faker::Commerce.price,
                       marking: Faker::Code.isbn,
                       asset: File.open(File.join("app", ActionController::Base.helpers.asset_path("assets/images/w/#{w+1}.jpg")))
                             )
  end
end
  
  
def fill_base
  make_countries.map do |country|
    country_img = File.open(File.join("app", ActionController::Base.helpers.asset_path("assets/images/country/#{country}.jpg")))
    c = Country.create!(name: country, asset: country_img)
    puts "country", c.name
    make_labels.each_with_index do |label, ind| 
      label_img = File.open(File.join("app", ActionController::Base.helpers.asset_path("assets/images/label/#{ind + 1}.png")))
      l = c.labels.create!(name: label, asset: label_img)
      puts "labels", l.name
      make_collections.each_with_index  do |collection, index|
        collect_img = File.open(File.join("app", ActionController::Base.helpers.asset_path("assets/images/collects/#{index + 1 }.jpg")))
        e = l.collections.create!(name: collection, asset: collect_img)
        puts "collection" , e.name
        make_wallpapers(e)
        
      end
    end
  end
end
    
end
