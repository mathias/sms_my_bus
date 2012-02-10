require 'spec_helper'

describe 'SmsMyBus' do
  describe 'key' do
    let(:key) { 'foobazzlew' }
    it 'should be set' do
      SmsMyBus.key = key
      SmsMyBus.key.should == key
    end
    it 'should raise if key is not set' do
      SmsMyBus.key.should raise_error
    end
  end

  describe SmsMyBus::Schedules do
    before do
      SmsMyBus.key = ENV['SMSMYBUS_KEY']
    end

    describe 'get_arrivals' do
      let(:invalid_stop_id) { 0 }
      let(:valid_stop_id) { 1101 }

      it 'invalid stop ID' do
        SmsMyBus::Schedules.get_arrivals(invalid_stop_id)['status'].should == '-1'
      end

      it 'valid stop ID' do
        SmsMyBus::Schedules.get_arrivals(valid_stop_id)['status'].should == '0'
      end

    end
  end
  describe SmsMyBus::Routes do
    describe 'get_routes' do
      it 'returns all the routes in the Metro system' do
        SmsMyBus::Routes.get_routes['status'].should == 0
      end
    end
  end

  describe SmsMyBus::Locations do
    describe 'get_stops' do
      let(:route_id) { 3 }
      let(:invalid_route_id) { 404 }
      it 'returns all stops for specified route' do
        SmsMyBus::Locations.get_stops(route_id)['status'].should == '0'
      end
      it 'invalid route' do
        # Behavior is not specified in API docs; always returns 0 status, even
        # for invalid route IDs
        SmsMyBus::Locations.get_stops(invalid_route_id)['status'].should == '0'
      end
    end
  end

  describe 'Notifications'
end
