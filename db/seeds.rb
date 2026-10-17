# db/seeds.rb

cafedras = [
  { id: 1, name: "Кафедра управления и информатики в технических системах (УИТС)" },
  { id: 2, name: "Кафедра информационных технологий и вычислительных систем (ИТВС)" },
  { id: 3, name: "Кафедра информационных систем (ИС)" },
  { id: 4, name: "Кафедра прикладной математики (ПМ)" }
]

cafedras.each do |c|
  Cafedra.find_or_create_by!(id: c[:id]) do |caf|
    caf.name = c[:name]
  end
end

voevodas = [
  { id: 1, fio: "Чеканин Владислав Александрович", degree: "Д-р техн. наук, заведующий кафедрой", cafedra_id: 1 },
  { id: 2, fio: "Елисеева Наталья Владимировна", degree: "Канд. техн. наук, доцент", cafedra_id: 1 },
  { id: 3, fio: "Левченко Александр Николаевич", degree: "Старший преподаватель", cafedra_id: 1 },
  { id: 4, fio: "Ибатулин Михаил Юрьевич", degree: "Старший преподаватель", cafedra_id: 1 },
  { id: 5, fio: "Новоселова Ольга Вячеславовна", degree: "Кандидат технических наук, Доцент, Заведующий кафедрой", cafedra_id: 2 },
  { id: 6, fio: "Бибиков Олег Денисович", degree: "Старший преподаватель", cafedra_id: 2 },
  { id: 7, fio: "Бильчук Мария Викторовна", degree: "кандидат технических наук, доцент, заведующая кафедрой", cafedra_id: 3 },
  { id: 8, fio: "Тясто Сергей Александрович", degree: "кандидат технических наук, доцент", cafedra_id: 3 },
  { id: 9, fio: "Иванова Татьяна Васильевна", degree: "старший преподаватель", cafedra_id: 3 },
  { id: 10, fio: "Уварова Людмила Александровна", degree: "доктор физико-математических наук, профессор, заведующая кафедрой", cafedra_id: 4 },
  { id: 11, fio: "Бабарин Сергей Сергеевич", degree: "кандидат физико-математических наук, доцент", cafedra_id: 4 },
  { id: 12, fio: "Бекмурзаева Ирина Сергеевна", degree: "старший преподаватель", cafedra_id: 4 }
]

voevodas.each do |v|
  Voevoda.find_or_create_by!(id: v[:id]) do |voe|
    voe.fio = v[:fio]
    voe.degree = v[:degree]
    voe.cafedra_id = v[:cafedra_id]
  end
end

conf_roles = [
  { id: 1, role: "Председатель" },
  { id: 2, role: "Сотрудник ГЭК" },
  { id: 3, role: "Секретарь" }
]

conf_roles.each do |r|
  ConfRole.find_or_create_by!(id: r[:id]) do |cr|
    cr.role = r[:role]
  end
end

roles = [
  { id: 1, role: "etc" }
]

roles.each do |r|
  Role.find_or_create_by!(id: r[:id]) do |rol|
    rol.role = r[:role]
  end
end