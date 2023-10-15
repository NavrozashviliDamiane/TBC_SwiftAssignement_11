class PirateCode {
    private func discussTerms(term: String) {
        print("Negotiations started. Terms: \(term)")
    }

    func parley() {
        discussTerms(term: "Ceasefire and peaceful resolution")
        print("Parley successful. We agree to a ceasefire.")
    }

    func mutiny() {
        discussTerms(term: "Rebellion and change in command")
        print("Mutiny successful. New leadership established.")
    }
}


let pirateCode = PirateCode()

print("Parley:")
pirateCode.parley()

print("\nMutiny:")
pirateCode.mutiny()
