import seaborn as sns
import matplotlib.pyplot as plt


def plot_pie_chart(series, label, title):
    """
    Plots a pie chart given a Pandas Series and its corresponding labels.

    Args:
    - series (Pandas Series): a Pandas Series to be plotted as a pie chart.
    - label (list of str): a list of labels for the series.
    - title (str): a title for the chart.

    Returns:
    - None: displays the pie chart.

    Example:
    >>> data = pd.Series([10, 20, 30, 40])
    >>> labels = ['A', 'B', 'C', 'D']
    >>> plot_pie_chart(data, labels, 'My Pie Chart')
    """
     
    # create a pie plot
    plt.figure(figsize=(4, 4))
    plt.pie(series, labels=label, autopct='%1.1f%%')
    plt.title(title)
    plt.show()

def plot_horizontal_bar(figsize_x, figsize_y, data, x, y, color, xlabel, ylabel, title):
    """
    Function to plot a horizontal bar chart using Seaborn library.
    
    Args:
    - figsize_x (int): width of the figure in inches
    - figsize_y (int): height of the figure in inches
    - data (DataFrame): pandas DataFrame object containing the data to be plotted
    - x (str): name of the column in the DataFrame to be plotted on the x-axis
    - y (str): name of the column in the DataFrame to be plotted on the y-axis
    - color (str): color of the bars in the chart
    - xlabel (str): label for the x-axis
    - ylabel (str): label for the y-axis
    - title (str): title for the chart
    
    Returns:
    - None
    """
    
    sns.set_style("whitegrid")
    sns.set_palette("pastel")
    sns.set(font_scale=1.2)

    # create a horizontal bar chart
    plt.figure(figsize=(figsize_x, figsize_y))
    ax = sns.barplot(x=x, y=y, data=data, color=color)
    plt.xlabel(xlabel)
    plt.ylabel(ylabel)
    plt.title(title)

    # add numbers on the bars
    for i, v in enumerate(data['CustomerCount']):
        ax.text(v + 0.2, i + .15, str(v), color='black', fontweight='bold')

    sns.despine(left=True)
    plt.show()


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
