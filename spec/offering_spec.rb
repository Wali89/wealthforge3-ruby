require "spec_helper"

describe WealthForge3::Offering do
  context "offering" do
    before do
      WealthForge3.configure do |config|
        config.session_id = "NS-b7f470c0-1620-11ec-844d-00155d0b8b04"
        config.environment = "development"
      end
    end

    it "create offering" do
      VCR.use_cassette "create_offering", record: :all do
        params = {
          "sessionid": WealthForge3.configuration.session_id,
          "outputtype": "Json",
          "APIOfferingData": {
            "attributes": {
              "stash": {
                "wfIsManagingEscrow": false,
                "wfIsManagingBD": false
              },
              "maximumRaise": "5000000",
              "minimumInvestment": "50000",
              "minimumRaise": "4000000",
              "name": "Sigma SPV",
              "offeringType": "REG_D_506_C",
              "paymentMethods": ["ACH", "WIRE"],
              "shouldPullKYC": true,
              "status": "PENDING_REVIEW",
              "startDate": "2019-01-01",
              "endDate": "2021-10-01",
              "createdBy": "Raybot",
              "createdAt": "2021-01-01",
              "securityTypes": [
                {
                  "securityPrice": "1",
                  "type": "COMMON_STOCK"
                }
              ]
            },
            "id": "internal-id-xyz",
            "type": "Offering"
          }
        }
        response = WealthForge3::Offering.create params
        expect(response["Done"]["offeringID"]).not_to be_nil
      end
    end
  end
end
