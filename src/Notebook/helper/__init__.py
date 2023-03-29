import seaborn as sns
import matplotlib.pyplot as plt
import pandas as pd

def plot_vertical_bar(figsize_x, figsize_y, data, x, y, xlabel, ylabel, title, color='crimson'):
    """
    Create a vertical bar chart using Seaborn.

    Parameters:
        data (DataFrame): The data to be plotted.
        x (str): The column name for the x-axis.
        y (str): The column name for the y-axis.
        xlabel (str): The label for the x-axis.
        ylabel (str): The label for the y-axis.
        title (str): The title of the chart.
        color (str): The color of the bars (default is 'crimson').

    Returns:
        None
    """
    sns.set_style("whitegrid")
    sns.set_palette("pastel")
    sns.set(font_scale=1.2)

    # create a vertical bar chart
    plt.figure(figsize=(figsize_x, figsize_y))
    ax = sns.barplot(x=x, y=y, data=data, color=color)
    plt.xlabel(xlabel)
    plt.ylabel(ylabel)
    plt.title(title)

    # add numbers on the bars
    for i, v in enumerate(data[y]):
        ax.text(i, v + 50, str(v), ha='center', color='black', fontweight='bold')

    sns.despine(left=True)
    plt.show()
