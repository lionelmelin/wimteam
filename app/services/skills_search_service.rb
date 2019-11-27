class SkillsSearchService
  def run(code)

    username = ENV['ONET_username']
    password = ENV['ONET_password']

    onet_ws = OnetWebService.new(username, password)

    vinfo = onet_ws.call('about')
    check_for_error(vinfo)
    puts "Connected to O*NET Web Services version #{vinfo['api_version']}"
    puts

    # code = '17-2051.00'
    kwresults = onet_ws.call_skills("mnm/careers/#{code}/skills")

    end_result = kwresults["group"].map do |result|
      result["element"].map { |e| e['name']}
    end.flatten

    p end_result
  end

  def check_for_error(service_result)
    if service_result.has_key?('error')
      abort service_result['error']
    end
  end
end
