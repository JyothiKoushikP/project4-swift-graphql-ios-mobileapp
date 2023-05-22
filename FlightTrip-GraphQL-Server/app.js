
const { ApolloServer, gql } = require('apollo-server')

const flights = [
    {flightID:"IGO3251",origin:"Bengaluru",destination:"Varanasi",durationInMinutes:"118",carriers:"Indigo",price:"25000",currency:"INR"},
    {flightID:"IAD745",origin:"Lucknow",destination:"Goa",durationInMinutes:"126",carriers:"AirAsia",price:"31300",currency:"INR"},
    {flightID:"UAE396",origin:"Dubai",destination:"Phuket",durationInMinutes:"500",carriers:"Emirates",price:"105000",currency:"INR"},
    {flightID:"IGO6417",origin:"Darbhanga",destination:"Hyderabad",durationInMinutes:"118",carriers:"Indigo",price:"21980",currency:"INR"},
    {flightID:"AIC301",origin:"Syndey",destination:"Delhi",durationInMinutes:"950",carriers:"AirIndia",price:"167000",currency:"INR"},
    {flightID:"LLR756",origin:"Guwahati",destination:"Kolkata",durationInMinutes:"97",carriers:"AllianceAir",price:"10000",currency:"INR"},
    {flightID:"AXB184",origin:"Sharjah",destination:"Varanasi",durationInMinutes:"208",carriers:"AirIndiaExpress",price:"32000",currency:"INR"},
    {flightID:"IGO3971",origin:"Siliguri",destination:"Bengaluru",durationInMinutes:"135",carriers:"AirAsia",price:"39000",currency:"INR"},
    {flightID:"IGO852",origin:"Bengaluru",destination:"Dehradun",durationInMinutes:"151",carriers:"Indigo",price:"29600",currency:"INR"},
    {flightID:"IGO6113",origin:"Chennai",destination:"Ranchi",durationInMinutes:"104",carriers:"Indigo",price:"12500",currency:"INR"},
    {flightID:"IGO3117",origin:"Dubai",destination:"Delhi",durationInMinutes:"452",carriers:"Corendon",price:"67000",currency:"INR"},
    {flightID:"GOW038",origin:"Bangkok",destination:"Delhi",durationInMinutes:"141",carriers:"GoAir",price:"43200",currency:"INR"},
    {flightID:"AIC775",origin:"Kolkata",destination:"Mumbai",durationInMinutes:"160",carriers:"AirIndia",price:"37500",currency:"INR"},
    {flightID:"AIC309",origin:"Melbourne",destination:"Delhi",durationInMinutes:"407",carriers:"AirIndia",price:"80000",currency:"INR"},
    {flightID:"BHA406",origin:"Nepalgunj",destination:"Kathmandu",durationInMinutes:"57",carriers:"BuddhaAir",price:"10000",currency:"INR"},
    {flightID:"UBG206",origin:"Chennai",destination:"Dhaka",durationInMinutes:"157",carriers:"USBangla",price:"42500",currency:"INR"},
    {flightID:"GOW199",origin:"Delhi",destination:"Srinagar",durationInMinutes:"68",carriers:"GoFirst",price:"8900",currency:"INR"},
    {flightID:"JAL39",origin:"Tokyo",destination:"Delhi",durationInMinutes:"429",carriers:"JapanAirlines",price:"89000",currency:"INR"},
    {flightID:"SEJ8942",origin:"Jharsuguda",destination:"Delhi",durationInMinutes:"100",carriers:"Corendon",price:"4650",currency:"INR"},
    {flightID:"UBG338",origin:"Male",destination:"Dhaka",durationInMinutes:"253",carriers:"USBangla",price:"52500",currency:"INR"},
    {flightID:"VTI888",origin:"Hyderbad",destination:"Mumbai",durationInMinutes:"63",carriers:"Vistara",price:"28764",currency:"INR"},
    {flightID:"IGO7564",origin:"Kolhapur",destination:"Hyderabad",durationInMinutes:"64",carriers:"Indigo",price:"17652",currency:"INR"},
]

const typeDefs = gql`
    type FlightDetails {
        flightID: String!
        origin: String!
        destination: String!
        durationInMinutes: String!
        carriers: String!
        price: String!
        currency: String!
    }
    type Query {
        flightQuery: [FlightDetails]
    }
`

const resolvers = {
    Query: {
        flightQuery: () => flights
    }
}

const server = new ApolloServer({typeDefs, resolvers})

server.listen().then(({url}) => {
    console.log(`GraphQL Server has started running at ${url}, Port: 4000`)
})
