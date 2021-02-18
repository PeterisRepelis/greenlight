pdf.font 'Helvetica', size: 10
pdf.text I18n.transliterate(main_title), style: :bold, align: :center, size: 16
pdf.move_down 5
pdf.text I18n.transliterate("#{starts_at.strftime("%d.%m.%Y %H:%M")} -> #{ends_at.strftime("%d.%m.%Y %H:%M")}"), align: :center, size: 12
pdf.move_down 10

table = []
header = [I18n.transliterate(username), I18n.transliterate(ip_address), I18n.transliterate(created_at)]
table << header
room_join_logs.each do |log|
  table << [I18n.transliterate(log.username), log.ip_address, I18n.transliterate(log.created_at.strftime("%d.%m.%Y %H:%M"))]
end
pdf.table(table, :column_widths => [310, 100, 100])
