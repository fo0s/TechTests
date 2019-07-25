class Percentage:

    def calculate(self, shifts, sales):
        self.percentage = {}
        self.percentage.update(sales)
        # Fill empty spots
        for time in shifts:
            if time not in self.percentage:
                self.percentage[time] = 0
                self.percentage[time] = -shifts[time]
        # Calculate percent
        for time in self.percentage:
            real_percent = shifts[time]*100/self.percentage[time]
            if self.percentage[time] > 0:
                self.percentage[time] = real_percent
        # Clip float to 1
        for number in self.percentage:
            self.percentage[number] = round(
                self.percentage[number], 1)

        return self.percentage
