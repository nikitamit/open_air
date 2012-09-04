class Api::V1::TimesheetsController < Api::ApiController
  def index
    #result = OpenAir::Request.request(:timesheet, auth: current_user.open_air_auth)
    result = {
      "@status"=>"0",
      "Timesheet"=>[
        {"id"=>"1", "created"=>{"Date"=>{"day"=>"2", "month"=>"2", "year"=>"2012", "hour"=>"3", "minute"=>"12", "second"=>"23"}}, "updated"=>{"Date"=>{"day"=>"2", "month"=>"2", "year"=>"2012", "hour"=>"4", "minute"=>"12", "second"=>"23"}}, "userid"=>"23", "status"=>"A", "default_payrolltypeid"=>"32", "default_timetypeid"=>"43", "name"=>"First name", "default_customerid"=>"23", "submitted"=>{"Date"=>{"day"=>"2", "month"=>"2", "year"=>"2012", "hour"=>"4", "minute"=>"12", "second"=>"23"}}, "total"=>"40", "default_categoryid"=>{}, "ends"=>{"Date"=>{"day"=>"2", "month"=>"2", "year"=>"2012", "hour"=>"4", "minute"=>"12", "second"=>"23"}}, "starts"=>{"Date"=>{"day"=>"2", "month"=>"2", "year"=>"2012", "hour"=>"5", "minute"=>"12", "second"=>"23"}}, "notes"=>{}, "default_projectid"=>"12", "acct_date"=>{"Date"=>{"day"=>"2", "month"=>"2", "year"=>"2012", "hour"=>"4", "minute"=>"12", "second"=>"23"}}},
        {"id"=>"1", "created"=>{"Date"=>{"day"=>"2", "month"=>"2", "year"=>"2012", "hour"=>"3", "minute"=>"12", "second"=>"23"}}, "updated"=>{"Date"=>{"day"=>"2", "month"=>"2", "year"=>"2012", "hour"=>"4", "minute"=>"12", "second"=>"23"}}, "userid"=>"23", "status"=>"R", "default_payrolltypeid"=>"32", "default_timetypeid"=>"43", "name"=>"last name", "default_customerid"=>"23", "submitted"=>{"Date"=>{"day"=>"2", "month"=>"2", "year"=>"2012", "hour"=>"4", "minute"=>"12", "second"=>"23"}}, "total"=>"5", "default_categoryid"=>{}, "ends"=>{"Date"=>{"day"=>"2", "month"=>"2", "year"=>"2012", "hour"=>"4", "minute"=>"12", "second"=>"23"}}, "starts"=>{"Date"=>{"day"=>"2", "month"=>"2", "year"=>"2012", "hour"=>"1", "minute"=>"12", "second"=>"23"}}, "notes"=>{}, "default_projectid"=>"12", "acct_date"=>{"Date"=>{"day"=>"2", "month"=>"2", "year"=>"2012", "hour"=>"3", "minute"=>"12", "second"=>"23"}}}
      ]
    }
    render json: result["Timesheet"]
  end
end
