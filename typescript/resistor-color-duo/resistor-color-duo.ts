export class ResistorColor {
  private colors: string[];
  
  COLORS = [
    "black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"
  ]

  constructor(colors: string[]) {
    if (colors.length < 2) { 
      const message = "At least two colors need to be present"
      throw new Error(message)
    }

    this.colors = colors;
  }
  
  value = (): number => {
    return +(this.colors.slice(0, 2).map(color => this.COLORS.indexOf(color)).join(""))
  }
}
