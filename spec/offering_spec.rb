require "spec_helper"

describe WealthForge2::Offering do
  context "offering" do
    before do
      WealthForge2.configure do |config|
        config.session_id = "NS-08a64abd-10ab-11ec-8466-00155d0b8b06"
        config.environment = "development"
      end
    end

    it "create offering" do
      VCR.use_cassette "create_offering", record: :all do
        params = {
          "sessionid": WealthForge2.configuration.session_id,
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
        response = WealthForge2::Offering.create params
        expect(response["Done"]["offeringID"]).not_to be_nil
      end
    end
  end
end
