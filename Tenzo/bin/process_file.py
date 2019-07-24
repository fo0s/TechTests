class ProcessFile:
    def return_cleaned_string(self, input):
        shift = self.sort_data(input)
        processed = [self.return_cleaned_user(entry) for entry in shift]
        # return results
        return processed

    def sort_data(self, input):
        data = self.remove_header(input)

        return data.split("\n")

    def remove_header(self, input):
        return '\n'.join(input.split('\n')[1:])

    def return_cleaned_user(self, input):
        return input.split(",")
