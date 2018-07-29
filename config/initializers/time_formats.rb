wd = ["日", "月", "火", "水", "木", "金", "土"]
time = Time.now
Time::DATE_FORMATS[:date] = "%Y年%-m月%-d日(#{wd[time.wday]})"